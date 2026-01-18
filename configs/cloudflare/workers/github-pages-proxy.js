export default {
  async fetch(request) {
    const GITHUB_USER = "kagenokeiyou";
    const url = new URL(request.url);
    const targetUrl = new URL(`https://${GITHUB_USER}.github.io${url.pathname}${url.search}`);

    const headers = new Headers(request.headers);
    headers.set("Host", `${GITHUB_USER}.github.io`);
    headers.set("Accept-Encoding", "gzip");
    headers.delete("CF-Connecting-IP");
    headers.delete("CF-IPCountry");
    headers.delete("CF-Ray");
    headers.delete("X-Forwarded-For");
    headers.delete("X-Forwarded-Proto");

    const newRequest = new Request(targetUrl, {
      method: request.method,
      headers,
      body: request.method === "GET" || request.method === "HEAD" ? null : request.body,
      redirect: "manual",
    });
    const response = await fetch(newRequest);

    const respHeaders = new Headers(response.headers);
    respHeaders.set("Cache-Control", "public, max-age=0, must-revalidate");

    return new Response(response.body, {
      status: response.status,
      headers: respHeaders,
    });
  },
};
