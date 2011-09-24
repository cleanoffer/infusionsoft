module ApiInfusionsoft
  class Client
    ########################  
    ### Affiliate Service ##
    ########################
    module Affiliate
      # return all claw backs in a date range
      def api_affiliate_clawbacks(affiliate_id, start_date, end_date)
        response = get('APIAffiliateService', 'affClawbacks', affiliate_id, start_date, end_date)
      end

      # return all commissions in a date range
      def api_affiliate_commissions(affiliate_id, start_date, end_date)
        response = get('APIAffiliateService', 'affCommissions', affiliate_id, start_date, end_date)
      end

      # return all payouts in a date range
      def api_affiliate_payouts(affiliate_id, start_date, end_date)
        response = get('APIAffiliateService', 'affPayouts', affiliate_id, start_date, end_date)
      end

      # returns a list with each row representing a single affiliates totals represented by a map with key
      # one of the names above, and value being the total for the variable
      def api_affiliate_running_totals(affiliate_list)
        response = get('APIAffiliateService', 'affRunningTotals', affiliate_list)
      end

      # return how much the specified affiliates are owed
      def api_affiliate_summary(affiliate_list, start_date, end_date)
        response = get('APIAffiliateService', 'affSummary', affiliate_list, start_date, end_date)
      end
    end
  end
end
