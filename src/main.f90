program main
  use lstStructMod
  implicit none
  type(list_type), pointer :: list
  integer                  :: nCell, max_nCell, list_length, array_len

  integer        , allocatable :: cells(:), groupNum_array(:)
  
  nullify( list )
  call add__elementInList( list, elementNum=10, groupNum=1 )
  call add__elementInList( list, elementNum=20, groupNum=2 )
  call add__elementInList( list, elementNum=30, groupNum=3 )
  call add__elementInList( list, elementNum=40, groupNum=1 )
  call add__elementInList( list, elementNum=50, groupNum=3 )
  call add__elementInList( list, elementNum=55, groupNum=4 )
  call add__elementInList( list, elementNum=60, groupNum=5 )
  call add__elementInList( list, elementNum=70, groupNum=1 )
  call add__elementInList( list, elementNum=80, groupNum=2 )
  call add__elementInList( list, elementNum=90, groupNum=3 )
  call add__elementInList( list, elementNum=99, groupNum=3 )
  call show__nodeInList  ( list )
  call investigate__listInfo( list, max_nCell, list_length )
  
  allocate( cells(max_nCell), groupNum_array(list_length) )
  call obtain__cellsInGroup ( list, 3, nCell, cells, max_nCell )
  call obtain__groupNumArray( list, groupNum_array, list_length  )
  write(6,*) max_nCell, list_length
  write(6,*) nCell, cells
  write(6,*) groupNum_array, list_length
  
  
  return
end program main
