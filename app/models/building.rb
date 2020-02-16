class Building < ActiveHash::Base
  
  self.data = [
      {id: 1, name: 'マンション'}, {id: 2, name: 'アパート'}, {id: 3, name: '戸建て'},
      {id: 4, name: 'タワーマンション'}, {id: 5, name: 'その他'}
  ]
end