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
BZh91AY&SYc�J�  �_�Tp}���~�ގ����  D   � P @�klm�D54)�1����a�SFDda���a�&��jx�2y&���@�0� ���&!Ɔ��L�4i��  @i� Ii6��f�����z��4zji�A���:�=�t���wR��<�Ԇu:�$�Le�zd�Ķf��]���f��"@�@ga(u�	��D�^~b���su2)��[��7㦣���7.pn��8}Y~�6�D/{��[ ���=H��z󓻵�2�=w���]�$MÓR��-f�����#m�FQ�L����)�����4Sr��1�n���ϔ`M�`�n^>��Nl��0�!�����7��P�D�"���?��W$!A:I�І��b(Ҍ1�(���1lړ�Dd�7K)�3��ٴtg	��HѢ8:Ά���7�cb��BW2�W�Y�ʔcW����M�����..m��ɵj����8���0>ECGf���<���[B���.��:f4ɐa�����,ZD���K���Y�7���e@m|+}���k��pK|�]�K@vBJ��ap��2��d�\��2r
b?P���0Y�1�I����h�p~�yL���en��{{�\�gY����(`宝��6 �R�
�n���0\$V`J�-S���JP�~�\l���k$�-��!�5�I+�,�ŭ1����VG������Q�:��̨V�������g�8α;@lsEE*���*
~0�:�O{~iUU@gb�	���%D��5�4�8#lx�/��$	��Ll�9�t��.4��w$S�	8���