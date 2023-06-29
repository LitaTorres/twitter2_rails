class Tweet < ApplicationRecord
    include PgSearch::Model

    pg_search_scope :search_full_text, against: {
        description: 'A',
        user_name: 'B',
        url_image: 'C',
    },


    using: {
        tsearch: {
            prefix: true,
            any_word: true,
            dictionary: "spanish",
        }
    }
end
