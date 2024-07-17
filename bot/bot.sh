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
BZh91AY&SY��ƫ  ����}����ޮ����  D   � P PL�y�۔:�����m'�4hh���m#F������j��6��CM22 1224 2 � T�4�h�2d�hP ��44���F�0��M4hM4   I I���S��O&M��������G��=C��OQ����3֠��pÂ��ś6��r)a!�����L�e�/��ղi�I9�7���J�	�t����ڭ�7�bH�CV��Ta��w���h���d#~{��A�q��YW)��tJ��2�4�;a���7q1o�խaZ�QQ!��9��Td4:8I3
B,ck��Z.��0��n��&8�'�͸8f[�$b�m�����3��I$��V�Ťዯ1�I��h��>�o����Ff]���;�7bcc���ڞ5�pѐfaL��+	��H���}��&��@i"ُ��Y���1 ))�&|�4	�= F�$�O�g���i"��^�e_�8����"e.�Z�4Ww���_0�<��� ���v|�&7��F�
|�6Y\����������4ϔ((y����4�teF=Q$,,$�RB��'^e�p����!Z��S���#B��1��WS���%�d>F�wh�B��E�Vn�����4�_��;$|)�[f��x�'�Պ,\at���r2nۄ�h# �1B�!R��a�Ќ�/�������t�l3!D�����:�<%Aw!���X�8^�f�l΢��'�<���M�&qڈ�.|h�ʩ�6��n�!2�LHi�p�j 3fr�s0ÆM�	��|��,)q1�~���5)����zLlp֓���@�k�1�C䍷��C��Kd:BH�6��@4�ǖ��mj[�m�U2��I0��;�)ѐ��ި�����S�b���s_�����v�c̹�l�w}x~T��tcmWѿ�\�f�����9^�bՐ�%k:������b�y��/q0��m�� ����S�S��
S�J���%3a��(iU�fZ*�fQ�'E��@�=��t2EK񈔌E�	$�jv�c5�:kE������J��m1���s�𦥺���S�c�ŝ��[���(Z�=�ť�H�n
��>��!ndy�,W"��-*��I�xI�#�����?�}��hND��ܑN$2�q��