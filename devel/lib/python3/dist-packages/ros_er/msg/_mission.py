# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_er/mission.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class mission(genpy.Message):
  _md5sum = "8b255d36a9b5156d79792657084a67cf"
  _type = "ros_er/mission"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint16 command
int32 arg1
int32 arg2
int32 arg3
int32 arg4
int32 arg5
int32 arg6
int32 arg7
int32 arg8
int32 arg9
int32 arg10
int32 arg11
int32 arg12
int32 arg13
int32 arg14
int32 arg15
int32 arg16
int32 arg17
int32 arg18
int32 arg19
int32 arg20
int16 behaviour
int32 timeafter
uint16 mission_counter"""
  __slots__ = ['command','arg1','arg2','arg3','arg4','arg5','arg6','arg7','arg8','arg9','arg10','arg11','arg12','arg13','arg14','arg15','arg16','arg17','arg18','arg19','arg20','behaviour','timeafter','mission_counter']
  _slot_types = ['uint16','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int16','int32','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       command,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,arg15,arg16,arg17,arg18,arg19,arg20,behaviour,timeafter,mission_counter

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(mission, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.command is None:
        self.command = 0
      if self.arg1 is None:
        self.arg1 = 0
      if self.arg2 is None:
        self.arg2 = 0
      if self.arg3 is None:
        self.arg3 = 0
      if self.arg4 is None:
        self.arg4 = 0
      if self.arg5 is None:
        self.arg5 = 0
      if self.arg6 is None:
        self.arg6 = 0
      if self.arg7 is None:
        self.arg7 = 0
      if self.arg8 is None:
        self.arg8 = 0
      if self.arg9 is None:
        self.arg9 = 0
      if self.arg10 is None:
        self.arg10 = 0
      if self.arg11 is None:
        self.arg11 = 0
      if self.arg12 is None:
        self.arg12 = 0
      if self.arg13 is None:
        self.arg13 = 0
      if self.arg14 is None:
        self.arg14 = 0
      if self.arg15 is None:
        self.arg15 = 0
      if self.arg16 is None:
        self.arg16 = 0
      if self.arg17 is None:
        self.arg17 = 0
      if self.arg18 is None:
        self.arg18 = 0
      if self.arg19 is None:
        self.arg19 = 0
      if self.arg20 is None:
        self.arg20 = 0
      if self.behaviour is None:
        self.behaviour = 0
      if self.timeafter is None:
        self.timeafter = 0
      if self.mission_counter is None:
        self.mission_counter = 0
    else:
      self.command = 0
      self.arg1 = 0
      self.arg2 = 0
      self.arg3 = 0
      self.arg4 = 0
      self.arg5 = 0
      self.arg6 = 0
      self.arg7 = 0
      self.arg8 = 0
      self.arg9 = 0
      self.arg10 = 0
      self.arg11 = 0
      self.arg12 = 0
      self.arg13 = 0
      self.arg14 = 0
      self.arg15 = 0
      self.arg16 = 0
      self.arg17 = 0
      self.arg18 = 0
      self.arg19 = 0
      self.arg20 = 0
      self.behaviour = 0
      self.timeafter = 0
      self.mission_counter = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_H20ihiH().pack(_x.command, _x.arg1, _x.arg2, _x.arg3, _x.arg4, _x.arg5, _x.arg6, _x.arg7, _x.arg8, _x.arg9, _x.arg10, _x.arg11, _x.arg12, _x.arg13, _x.arg14, _x.arg15, _x.arg16, _x.arg17, _x.arg18, _x.arg19, _x.arg20, _x.behaviour, _x.timeafter, _x.mission_counter))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 90
      (_x.command, _x.arg1, _x.arg2, _x.arg3, _x.arg4, _x.arg5, _x.arg6, _x.arg7, _x.arg8, _x.arg9, _x.arg10, _x.arg11, _x.arg12, _x.arg13, _x.arg14, _x.arg15, _x.arg16, _x.arg17, _x.arg18, _x.arg19, _x.arg20, _x.behaviour, _x.timeafter, _x.mission_counter,) = _get_struct_H20ihiH().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_H20ihiH().pack(_x.command, _x.arg1, _x.arg2, _x.arg3, _x.arg4, _x.arg5, _x.arg6, _x.arg7, _x.arg8, _x.arg9, _x.arg10, _x.arg11, _x.arg12, _x.arg13, _x.arg14, _x.arg15, _x.arg16, _x.arg17, _x.arg18, _x.arg19, _x.arg20, _x.behaviour, _x.timeafter, _x.mission_counter))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 90
      (_x.command, _x.arg1, _x.arg2, _x.arg3, _x.arg4, _x.arg5, _x.arg6, _x.arg7, _x.arg8, _x.arg9, _x.arg10, _x.arg11, _x.arg12, _x.arg13, _x.arg14, _x.arg15, _x.arg16, _x.arg17, _x.arg18, _x.arg19, _x.arg20, _x.behaviour, _x.timeafter, _x.mission_counter,) = _get_struct_H20ihiH().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_H20ihiH = None
def _get_struct_H20ihiH():
    global _struct_H20ihiH
    if _struct_H20ihiH is None:
        _struct_H20ihiH = struct.Struct("<H20ihiH")
    return _struct_H20ihiH