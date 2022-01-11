// Generated by gencpp from file robtrj/var.msg
// DO NOT EDIT!


#ifndef ROBTRJ_MESSAGE_VAR_H
#define ROBTRJ_MESSAGE_VAR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robtrj
{
template <class ContainerAllocator>
struct var_
{
  typedef var_<ContainerAllocator> Type;

  var_()
    : x(0.0)
    , y(0.0)
    , theta(0.0)
    , v(0.0)
    , w(0.0)
    , x1()
    , y1()
    , theta1()  {
    }
  var_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , theta(0.0)
    , v(0.0)
    , w(0.0)
    , x1(_alloc)
    , y1(_alloc)
    , theta1(_alloc)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _theta_type;
  _theta_type theta;

   typedef double _v_type;
  _v_type v;

   typedef double _w_type;
  _w_type w;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _x1_type;
  _x1_type x1;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _y1_type;
  _y1_type y1;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _theta1_type;
  _theta1_type theta1;





  typedef boost::shared_ptr< ::robtrj::var_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robtrj::var_<ContainerAllocator> const> ConstPtr;

}; // struct var_

typedef ::robtrj::var_<std::allocator<void> > var;

typedef boost::shared_ptr< ::robtrj::var > varPtr;
typedef boost::shared_ptr< ::robtrj::var const> varConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robtrj::var_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robtrj::var_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robtrj::var_<ContainerAllocator1> & lhs, const ::robtrj::var_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.theta == rhs.theta &&
    lhs.v == rhs.v &&
    lhs.w == rhs.w &&
    lhs.x1 == rhs.x1 &&
    lhs.y1 == rhs.y1 &&
    lhs.theta1 == rhs.theta1;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robtrj::var_<ContainerAllocator1> & lhs, const ::robtrj::var_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robtrj

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robtrj::var_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robtrj::var_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robtrj::var_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robtrj::var_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robtrj::var_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robtrj::var_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robtrj::var_<ContainerAllocator> >
{
  static const char* value()
  {
    return "71228efca7231d105d672dee9dd6a55c";
  }

  static const char* value(const ::robtrj::var_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x71228efca7231d10ULL;
  static const uint64_t static_value2 = 0x5d672dee9dd6a55cULL;
};

template<class ContainerAllocator>
struct DataType< ::robtrj::var_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robtrj/var";
  }

  static const char* value(const ::robtrj::var_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robtrj::var_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 theta\n"
"float64 v\n"
"float64 w\n"
"float64[] x1\n"
"float64[] y1\n"
"float64[] theta1\n"
;
  }

  static const char* value(const ::robtrj::var_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robtrj::var_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.theta);
      stream.next(m.v);
      stream.next(m.w);
      stream.next(m.x1);
      stream.next(m.y1);
      stream.next(m.theta1);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct var_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robtrj::var_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robtrj::var_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "theta: ";
    Printer<double>::stream(s, indent + "  ", v.theta);
    s << indent << "v: ";
    Printer<double>::stream(s, indent + "  ", v.v);
    s << indent << "w: ";
    Printer<double>::stream(s, indent + "  ", v.w);
    s << indent << "x1[]" << std::endl;
    for (size_t i = 0; i < v.x1.size(); ++i)
    {
      s << indent << "  x1[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.x1[i]);
    }
    s << indent << "y1[]" << std::endl;
    for (size_t i = 0; i < v.y1.size(); ++i)
    {
      s << indent << "  y1[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.y1[i]);
    }
    s << indent << "theta1[]" << std::endl;
    for (size_t i = 0; i < v.theta1.size(); ++i)
    {
      s << indent << "  theta1[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.theta1[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBTRJ_MESSAGE_VAR_H