# to_sentenceメソッドの定義。
# 引数optionsをハッシュ型にする。
 def to_sentence(options = {})
  # ハッシュの引数optionsがレシーバ。
  # assert_valid_keys()メソッドを使用。
  # assert_vaild_keysとは引数で提示するkeyがレシーバに存在するかを確認する。
  # 存在する場合、
    options.assert_valid_keys(:words_connector, :two_words_connector, :last_word_connector, :locale)

    default_connectors = {
      words_connector: ", ",
      two_words_connector: " and ",
      last_word_connector: ", and "
    }
    if options[:locale] != false && defined?(I18n)
      i18n_connectors = I18n.translate(:'support.array', locale: options[:locale], default: {})
      default_connectors.merge!(i18n_connectors)
    end
    options = default_connectors.merge!(options)

    case length
    when 0
      +""
    when 1
      +"#{self[0]}"
    when 2
      +"#{self[0]}#{options[:two_words_connector]}#{self[1]}"
    else
      +"#{self[0...-1].join(options[:words_connector])}#{options[:last_word_connector]}#{self[-1]}"
    end
  end


  def to_formatted_s(format = :default)
    case format
    when :db
      if empty?
        "null"
      else
        collect(&:id).join(",")
      end
    else
      to_default_s
    end
  end
  alias_method :to_fs, :to_formatted_s
  alias_method :to_default_s, :to_s
