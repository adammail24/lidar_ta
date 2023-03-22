# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from my_pcl_tutorial/sensors.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class sensors(genpy.Message):
  _md5sum = "0aee75a1390f2e5984fa9af15d4f63f7"
  _type = "my_pcl_tutorial/sensors"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 global_pos_x
int32 global_pos_y 
# uint8 global_pos_x
# uint8 global_pos_y
int16 enc_carry
int16 slider
int32 rot
float32 rot_deg
int32 engsel
float32 gyro
float32 gyro_full
int16 capit
float32 sick_kiri
float32 sick_depan
float32 sick_belakang

uint8 reset
uint8 stm_reseted

int8 tilt_kiri
int8 tilt_kanan"""
  __slots__ = ['global_pos_x','global_pos_y','enc_carry','slider','rot','rot_deg','engsel','gyro','gyro_full','capit','sick_kiri','sick_depan','sick_belakang','reset','stm_reseted','tilt_kiri','tilt_kanan']
  _slot_types = ['int32','int32','int16','int16','int32','float32','int32','float32','float32','int16','float32','float32','float32','uint8','uint8','int8','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       global_pos_x,global_pos_y,enc_carry,slider,rot,rot_deg,engsel,gyro,gyro_full,capit,sick_kiri,sick_depan,sick_belakang,reset,stm_reseted,tilt_kiri,tilt_kanan

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(sensors, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.global_pos_x is None:
        self.global_pos_x = 0
      if self.global_pos_y is None:
        self.global_pos_y = 0
      if self.enc_carry is None:
        self.enc_carry = 0
      if self.slider is None:
        self.slider = 0
      if self.rot is None:
        self.rot = 0
      if self.rot_deg is None:
        self.rot_deg = 0.
      if self.engsel is None:
        self.engsel = 0
      if self.gyro is None:
        self.gyro = 0.
      if self.gyro_full is None:
        self.gyro_full = 0.
      if self.capit is None:
        self.capit = 0
      if self.sick_kiri is None:
        self.sick_kiri = 0.
      if self.sick_depan is None:
        self.sick_depan = 0.
      if self.sick_belakang is None:
        self.sick_belakang = 0.
      if self.reset is None:
        self.reset = 0
      if self.stm_reseted is None:
        self.stm_reseted = 0
      if self.tilt_kiri is None:
        self.tilt_kiri = 0
      if self.tilt_kanan is None:
        self.tilt_kanan = 0
    else:
      self.global_pos_x = 0
      self.global_pos_y = 0
      self.enc_carry = 0
      self.slider = 0
      self.rot = 0
      self.rot_deg = 0.
      self.engsel = 0
      self.gyro = 0.
      self.gyro_full = 0.
      self.capit = 0
      self.sick_kiri = 0.
      self.sick_depan = 0.
      self.sick_belakang = 0.
      self.reset = 0
      self.stm_reseted = 0
      self.tilt_kiri = 0
      self.tilt_kanan = 0

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
      buff.write(_get_struct_2i2hifi2fh3f2B2b().pack(_x.global_pos_x, _x.global_pos_y, _x.enc_carry, _x.slider, _x.rot, _x.rot_deg, _x.engsel, _x.gyro, _x.gyro_full, _x.capit, _x.sick_kiri, _x.sick_depan, _x.sick_belakang, _x.reset, _x.stm_reseted, _x.tilt_kiri, _x.tilt_kanan))
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
      end += 50
      (_x.global_pos_x, _x.global_pos_y, _x.enc_carry, _x.slider, _x.rot, _x.rot_deg, _x.engsel, _x.gyro, _x.gyro_full, _x.capit, _x.sick_kiri, _x.sick_depan, _x.sick_belakang, _x.reset, _x.stm_reseted, _x.tilt_kiri, _x.tilt_kanan,) = _get_struct_2i2hifi2fh3f2B2b().unpack(str[start:end])
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
      buff.write(_get_struct_2i2hifi2fh3f2B2b().pack(_x.global_pos_x, _x.global_pos_y, _x.enc_carry, _x.slider, _x.rot, _x.rot_deg, _x.engsel, _x.gyro, _x.gyro_full, _x.capit, _x.sick_kiri, _x.sick_depan, _x.sick_belakang, _x.reset, _x.stm_reseted, _x.tilt_kiri, _x.tilt_kanan))
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
      end += 50
      (_x.global_pos_x, _x.global_pos_y, _x.enc_carry, _x.slider, _x.rot, _x.rot_deg, _x.engsel, _x.gyro, _x.gyro_full, _x.capit, _x.sick_kiri, _x.sick_depan, _x.sick_belakang, _x.reset, _x.stm_reseted, _x.tilt_kiri, _x.tilt_kanan,) = _get_struct_2i2hifi2fh3f2B2b().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i2hifi2fh3f2B2b = None
def _get_struct_2i2hifi2fh3f2B2b():
    global _struct_2i2hifi2fh3f2B2b
    if _struct_2i2hifi2fh3f2B2b is None:
        _struct_2i2hifi2fh3f2B2b = struct.Struct("<2i2hifi2fh3f2B2b")
    return _struct_2i2hifi2fh3f2B2b
