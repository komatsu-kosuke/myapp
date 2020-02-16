class Roadwidth < ActiveHash::Base
  
  self.data = [
      {id: 1, name: '自動車2台が余裕ですれ違える'}, {id: 2, name: '自動車2台がギリギリですれ違える'}, {id: 3, name: '自動車1台が通行できる'},
      {id: 4, name: '自動車が通行できない'}
  ]
end