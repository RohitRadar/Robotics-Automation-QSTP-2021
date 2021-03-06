// Generated by gencpp from file turtbot/angvel.msg
// DO NOT EDIT!


#ifndef TURTBOT_MESSAGE_ANGVEL_H
#define TURTBOT_MESSAGE_ANGVEL_H

#include <ros/service_traits.h>


#include <turtbot/angvelRequest.h>
#include <turtbot/angvelResponse.h>


namespace turtbot
{

struct angvel
{

typedef angvelRequest Request;
typedef angvelResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct angvel
} // namespace turtbot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::turtbot::angvel > {
  static const char* value()
  {
    return "e5f38ccc8932cb1197b8085a4660fcbb";
  }

  static const char* value(const ::turtbot::angvel&) { return value(); }
};

template<>
struct DataType< ::turtbot::angvel > {
  static const char* value()
  {
    return "turtbot/angvel";
  }

  static const char* value(const ::turtbot::angvel&) { return value(); }
};


// service_traits::MD5Sum< ::turtbot::angvelRequest> should match
// service_traits::MD5Sum< ::turtbot::angvel >
template<>
struct MD5Sum< ::turtbot::angvelRequest>
{
  static const char* value()
  {
    return MD5Sum< ::turtbot::angvel >::value();
  }
  static const char* value(const ::turtbot::angvelRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::turtbot::angvelRequest> should match
// service_traits::DataType< ::turtbot::angvel >
template<>
struct DataType< ::turtbot::angvelRequest>
{
  static const char* value()
  {
    return DataType< ::turtbot::angvel >::value();
  }
  static const char* value(const ::turtbot::angvelRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::turtbot::angvelResponse> should match
// service_traits::MD5Sum< ::turtbot::angvel >
template<>
struct MD5Sum< ::turtbot::angvelResponse>
{
  static const char* value()
  {
    return MD5Sum< ::turtbot::angvel >::value();
  }
  static const char* value(const ::turtbot::angvelResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::turtbot::angvelResponse> should match
// service_traits::DataType< ::turtbot::angvel >
template<>
struct DataType< ::turtbot::angvelResponse>
{
  static const char* value()
  {
    return DataType< ::turtbot::angvel >::value();
  }
  static const char* value(const ::turtbot::angvelResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TURTBOT_MESSAGE_ANGVEL_H
