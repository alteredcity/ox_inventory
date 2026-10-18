/**
 * Simple wrapper around fetch API tailored for CEF/NUI use. This abstraction
 * can be extended to include AbortController if needed or if the response isn't
 * JSON. Tailor it to your needs.
 *
 * @param eventName - The endpoint eventname to target
 * @param data - Data you wish to send in the NUI Callback
 *
 * @return returnData - A promise for the data sent back by the NuiCallbacks CB argument
 */

import { isEnvBrowser } from './misc';

const fetch = window.fetch;
// fetch neutralise (anti-injection), sauf pour le kit Font Awesome qui l'utilise pour charger ses icones
// (sans cela : "Cannot read properties of undefined (reading 'then')").
const FONT_AWESOME_HOST = /^https:\/\/[a-z0-9-]+\.fontawesome\.com\//i;
// @ts-expect-error
window.fetch = (input?: RequestInfo | URL, init?: RequestInit) => {
  const url = typeof input === 'string' ? input : input instanceof URL ? input.href : (input as Request | undefined)?.url;
  return url && FONT_AWESOME_HOST.test(url) ? fetch(input as RequestInfo, init) : undefined;
};
// @ts-expect-error
window.XMLHttpRequest = window.fetch;

const resourceName = (window as any).GetParentResourceName ? (window as any).GetParentResourceName() : 'ox_inventory';

export async function fetchNui<T>(eventName: string, data?: unknown): Promise<T> {
  if (isEnvBrowser()) return undefined as any; // HACK FOR BORING ERRORS IN DEV

  try {
    const resp = await fetch(`https://${resourceName}/${eventName}`, {
      method: 'post',
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: JSON.stringify(data),
    });

    const respFormatted = await resp.json();

    return respFormatted;
  } catch (error) {
    throw Error(`Failed to fetch NUI callback ${eventName}! (${error})`);
  }
}
