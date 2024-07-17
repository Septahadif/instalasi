#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYE��  T��}�sF�� ?���  D  � P @s��(*j������hd@0���$�ښh=F���F�� �4�&C 0L  �����L�ɤd4�6�Ij�����}'�F�$�/�v3\��
f������ |*��x�Ӧy돬2��Ѧ�UUX][9V�\K�S��cIy�=�=�(h����ܹ)TU,-�����;F�e�`Ԫ�,�P�Q.��\`a��@k8vۧ��
��`.�=���wC��0܉��s�Y�P^�s!V��zXG�`��y��'[���cE��P���D�H���N��gt� ������0o������G���ɮ��L�û?��\	�q���$�e�7d'�,l�Na�-�h�UUUZ��^���5�t@V�%�I<�٣5K�X�-u��8I�yd޵_�9����i�+v����$�O�R���U��v8E�cittɖI��&C�^1��$�~�L�p�5Y�4�s��B������to&<�����iy������2_,N��q��?G�O�9�����.�p� ��74