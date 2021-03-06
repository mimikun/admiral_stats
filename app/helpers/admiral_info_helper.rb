module AdmiralInfoHelper
  include EventPeriodHelper

  # イベント進捗情報のテキスト表現を返します。
  def event_progress_status_to_text(stages, status)
    return '未開放' unless status.opened?

    retval = "#{status.current_loop_counts} 周目 "

    if status.current_loop_counts == status.cleared_loop_counts
      retval += "全海域突破！"
    else
      curr_stg = stages.select{|stg| stg.stage_no == status.cleared_stage_no + 1 }.first
      if curr_stg.display_stage_no == 0
        retval += "掃討戦 出撃中"
      else
        retval += "E-#{curr_stg.display_stage_no} 出撃中"
        if curr_stg.ene_military_gauge_val > 0
          retval += "（ゲージ残り #{status.current_military_gauge_left}/#{curr_stg.ene_military_gauge_val}）"
        end
      end
    end

    retval
  end

  # 輸送イベント進捗情報のテキスト表現を返します。
  def cop_event_progress_status_to_text(status)
    "#{status.achievement_number} 周目（TPゲージ残り #{status.numerator}/#{status.denominator}）"
  end
end
