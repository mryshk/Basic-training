# to_sentenceメソッドの定義。配列をレシーバとし、配列を文章化させるメソッド。
# 引数optionsをハッシュ型にする。
# レシーバは配列を想定。
 def to_sentence(options = {})
  # ハッシュの引数optionsがレシーバ。
  # assert_valid_keys()メソッドを使用。
  # assert_vaild_keysとは引数で提示するkeyがレシーバに存在するかを確認する。
  # 存在する場合、存在するkeyをvalueとセットでハッシュとして返す。
  # 存在しない場合、ArgumentErrorを返す。
    options.assert_valid_keys(:words_connector, :two_words_connector, :last_word_connector, :locale)

  # デフォルトの値をそれぞれ定義し、default_connectors変数へまとめて格納する。 
  # connectorとは主に接続部分を表す。今回は配列の間の接続言葉を示す。
    default_connectors = {
      words_connector: ", ",
      two_words_connector: " and ",
      last_word_connector: ", and "
    }
    
    
    # もし引数optionsにkeyのlocaleが存在する場合 かつ I18nが定義されている場合
    # I18nとは簡単にいうと、言語の変換機能
    if options[:locale] != false && defined?(I18n)
      # config/locales/ymlファイルにsupport.array配下に[:locale]で指定した言語で接続言語を定義する。
      # そのymlファイルで定義した言語をi18n_connectors変数へ格納する。
      i18n_connectors = I18n.translate(:'support.array', locale: options[:locale], default: {})
      # デフォルトの接続言葉(default)に上記の翻訳(i18n)バージョンをくっつける(mergeする)。
      # ！がついているため値が変更される。（破壊的メソッドであるため。）
      default_connectors.merge!(i18n_connectors)
    end
    
    
    # デフォルトの接続言葉(default)に引数のハッシュ(options)をマージ（破壊的）してoptions変数を更新する。
    # merge・・keyが重複する場合、後に追加したkeyが優先される。
    # すなわち、引数optionsにdefaultと重複するkeyが存在する場合、引数optionsのkeyのvalueが優先される。
    # default {two_words_connctor: "and"} が 引数options {two_words_connector: "と"}に変更される（破壊的に）
    options = default_connectors.merge!(options)

   # レシーバ（配列）の要素数の場合分け。
    case length
    # 配列要素数が０の場合,空白""を表示
    when 0
      +""
    # 配列要素数が１の場合
    # レシーバの配列が０の要素をそのまま表示。
    when 1
      +"#{self[0]}"
    # 配列要素数が２の場合
    # レシーバの配列が０の要素を表示し、次にハッシュoptionsのkey[:two_words_connector]のvalueを変数展開し表示。
    # その後、レシーバの配列が１の要素を表示。
    when 2
      +"#{self[0]}#{options[:two_words_connector]}#{self[1]}"
    # 配列要素数が３以上の場合
    else
    # レシーバの配列が０の要素〜最後から２つ目の要素までを、ハッシュoptionsのkey[:words_connector]のvalueとくっつけて表示。
    # その後に、ハッシュoptionsのkey[:last_words_connector]のvalueを変数展開し表示。残りの配列の最後の要素を表示。
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
