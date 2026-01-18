import { defineConfig } from 'vitepress'

const base = '/configs/'

export default defineConfig({
  title: 'Configs',
  description: 'Personal configs of Keiyou',
  lang: 'zh-CN',
  base: base,
  head: [['link', { rel: 'icon', href: base + 'avatar.png' }]],
  appearance: 'dark',
  cleanUrls: true,
  lastUpdated: true,

  themeConfig: {
    logo: '/avatar.png',
    search: {
      provider: 'local',
    },
    socialLinks: [{ icon: 'github', link: 'https://github.com/kagenokeiyou/configs' }],
    outline: {
      level: 'deep',
    },
    footer: {
      message:
        'Released under the <a href="https://github.com/kagenokeiyou/configs/blob/main/LICENSE">MIT License</a>',
      copyright: 'Copyright © 2026-present <a href="https://github.com/kagenokeiyou">Keiyou</a>',
    },
    nav: [{ text: 'Contents', link: '/contents.md' }],

    sidebar: {},
  },
})
