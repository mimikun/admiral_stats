# API request ログをユーザに確認してもらうためのデータ
# ユーザ自身に API 動作確認してもらうことが目的のため、admiral_id が確定しない段階でのログ（認証エラーなど）は記録しない
class ApiRequestLog < ApplicationRecord
  # 提督 ID
  validates :admiral_id,
            presence: true,
            numericality: {
                only_integer: true,
            }

  # リクエストメソッド（GET, POST, ...）
  validates :request_method,
            presence: true,
            length: {  maximum: 7 }

  # リクエスト URI
  validates :request_uri,
            presence: true,
            length: {  maximum: 255 }

  # User-Agent
  validates :user_agent,
            length: {  maximum: 255 }

  # ステータスコード
  validates :status_code,
            presence: true,
            numericality: {
                only_integer: true,
            }

  # レスポンス内容を表すレスポンスボディなど
  validates :response,
            length: {  maximum: 255 }
end
