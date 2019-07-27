users = [
  { name: 'ぶたごりら', email: 'aho@gmail.com'},
  { name: 'スネオアンダーヘア', email: 'suneo@gmail.com'},
  { name: 'クリトリックリス☆スギム', email: 'sugimu@yahoo.co.jp'},
  { name: 'SP-1200', email: 'sp1200@gmail.com'}
]
User.create! users

whisper_logs = [
  { user_id: '2', comment:'あいうえおかきくこ'},
  { user_id: '2', comment:'テスト' },
  { user_id: '4', comment:'あああああああああ' },
  { user_id: '3', comment:'ｓｓｓｓｓｓｓ' },
  { user_id: '1', comment:'はらへった' },
  { user_id: '2', comment:'でｊｋｖｆｒんｊｆｋｆｒ' },
  { user_id: '3', comment:'mkfrokosdfg' }
]
WhisperLog.create! whisper_logs
