class Timer < ActiveHash::Base
  
  self.data = [
      {id: 1, name: '午前'}, {id: 2, name: '午後'}, {id: 3, name: 'いつでもよい'}
  ]
end