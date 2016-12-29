CHECK:
  LOAD "PASSWORD.SAV" 42000
  IF R = 1 THEN GOTO MAIN
  DELETE "PASSWORD.SAV"
  IF R = 0 THEN GOTO MAIN
  PRINT "Tidak dapat menghapus berkas kata sandi kini."
  PRINT "Disk ini hanya-baca!"
END
  
MAIN:
  PRINT "Masukkan kata sandi baru: " ;
  INPUT $1
  IF $1 = "" THEN PRINT "Kata sandi dihapus!"
  IF $1 = "" THEN END
  Y = & $1
  V = 40000
  U = 40128
  FOR X = 1 TO 128
    PEEK Z Y
    RAND T 1 128
    Z = Z + T
    POKE Z V
    POKE T U
    Y = Y + 1
    V = V + 1
    U = U + 1
  NEXT X
  SAVE "PASSWORD.SAV" 40000 78
  PRINT "Kata sandi berhasil dibuat."
  PRINT "Pastikan anda memiliki berkas bernama 'AUTORUN.BAS' pada disk."

WIPE:
  FOR X = 40000 TO 40255
    POKE 0 X
  NEXT X
END
