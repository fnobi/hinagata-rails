module SiteHelper
  def default_meta_tags
    {
      site: Settings.meta_tags.site_name,
      reverse: true,
      description: Settings.meta_tags.description,
      keywords: Settings.meta_tags.keywords,
      icon: [
        { href: '/favicon.ico', },
        {
          href: "#{root_url}homeicon.png",
          rel: 'apple-touch-icon-precomposed',
          type: 'image/png'
        },
      ],
      og: {
        title: :title,
        type: "website",
        image: {
          _: "#{root_url}ogp.jpg",
          width: 1200,
          height: 630
        },
        site_name: Settings.meta_tags.site_name,
        description: :description,
        locale: 'ja_JP'
      },
      twitter: {
        card: "summary_large_image",
        title: :title,
        description: :description,
        image: {
          _: "#{root_url}ogp.jpg",
          width: 1200,
          height: 630
        },
        site: Settings.meta_tags.twitter_account,
        creator: Settings.meta_tags.twitter_account
      }
    }
  end
end
