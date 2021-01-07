module Avo
  module Filters
    class PeopleFilter < SelectFilter
      def name
        'People status (temporary)'
      end

      def apply(request, query, value)
        case value
        when 'a_lot'
          query.where('users_required > ?', 30)
        when 'few'
          query.where('users_required <= ?', 30)
        else
          query
        end
      end

      def options
        {
          'a_lot': 'A lot',
          'few': 'Few (< 30)',
        }
      end

      def default
        'few'
      end
    end
  end
end