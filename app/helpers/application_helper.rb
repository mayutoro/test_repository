module ApplicationHelper
  
  def i18n_url_for(options)
    if options[:locale] == I18n.default_locale
      options[:locale] = nil
    end
    url_for(options)
  end
  
  def content_description(target_path)
    descriptions = {
      "/" => "komorikomashaは、コモモ・モリコ・ひろましゃ3人のメンバーが勢いでつくったものや活動を紹介しているサイトです。",
      "/about/index" => "komorikomashaの作品作りのコンセプトを紹介するページです。",
      "/portfolio/index" => "komorikomasha（こもりこましゃ）が制作した作品を紹介するポートフォリオの一覧ページです。",
      "/portfolio/pf01" => "baserCMSのカフェサイト用テーマ「Cafe Debut（カフェ・デビュー）」の紹介ページです。cafe Debutは、Instagramと連携して撮影した写真がすぐにサイトのトップページの反映されるおしゃれでかわいいフォトログ風テーマです。",
      "/portfolio/pf02" => "書籍「WordPressデザインワークブック」の紹介ページです。WordPressデザインワークブックは、クライアントワークで本格的なコーポレートサイトを作れるようになりたいウェブデザイナー向けのWordPressテーマカスタマイズの入門書です。",
      "/portfolio/pf03" => "Web仕掛け絵本「バッタになりたい魔法使い」の紹介ページです。合い言葉は、「バッタになっちゃえ！」いつもひとりぼっちの魔法使いくんの成長物語です。",
    }
    if descriptions.include?(target_path)
      descriptions[:target_path]
    end
  end
  
  def current_class(target_name)
    if controller_name == target_name
      "current"
    end
  end
  
  def copyright
    text = "Copyright&copy; 2013"
    if Date.today.year > 2013
      text << " - " + Date.today.year.to_s
    end
    text << " @komorikomasha All Rights Reserved."
    text
  end
end
