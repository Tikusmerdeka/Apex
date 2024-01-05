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
BZh91AY&SY;�D�  �_�DX}���.n�޿���    @�H: PI�F��M4 ��   ᦘ!��L��@4�F�0 ���=S�M�4d@h �� PD�Ѡji��	�jh�O&��M'�)�j
f��n�uvd�t?%F�鮃�N�l���� �����������eŝD�⨙��@��e�׳�șc�Z!�;��'��4^o�yt�yvyes��y؆!f\�0^X�;�,�zn� ���?M1�#�cPP�+��RH`��v�r
�4$4�H�~��) qK�P$��30z�q��rN��G���~�P��H�������8�F�C6�rq�TYNF�x̚���|OM����{�M]�������*
H�'��������T�I�ab�hp�! �Urx���S���zyx�������M���J�Ի&�V>F��;�P�N�$���Aω6�`���7��qy�x8ȳ�9Ng�:*���|{��Z�b�U���ȡ��Pn ���f�^�F��,��&l��D,B>��chs�Z�8,hfʪ��fp���Sit%�;�����i�\o��[A��0��gi�m����������3���p#��s'�	���f��:C��a�~)��$M֖J���x&�b�w�<�G�ls�D7�W�2�"G���4Rӹ��n�2�������ꜷ󞇆�(S��Wm������/mU�idH�@J�T$T^rב�D��+G�����{�O��gt���9��(s�^�˩ d:�;g)����*�����]��B@��p