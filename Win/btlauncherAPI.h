/**********************************************************\

  Auto-generated btlauncherAPI.h

\**********************************************************/

#include <string>
#include <stdio.h>
#include <string.h>
#include <atlbase.h>
#include <atlstr.h>
#include <string.h>
#include <boost/weak_ptr.hpp>
#include <boost/uuid/uuid.hpp>
#include <boost/uuid/uuid_io.hpp>
#include <boost/uuid/random_generator.hpp>

#include "JSAPIAuto.h"
#include "BrowserHost.h"
#include "../btlauncher.h"
#include "SystemHelpers.h"
#include "SimpleStreamHelper.h"

#ifndef H_btlauncherAPI
#define H_btlauncherAPI

class btlauncherAPI : public FB::JSAPIAuto
{
public:
    btlauncherAPI(const btlauncherPtr& plugin, const FB::BrowserHostPtr& host);
    virtual ~btlauncherAPI();

    btlauncherPtr getPlugin();

    // Read/Write property ${PROPERTY.ident}
    std::string get_testString();
    void set_testString(const std::string& val);

    // Read-only property ${PROPERTY.ident}
    std::string get_version();

    // Method echo
    FB::variant echo(const FB::variant& msg);
	void checkForUpdate(const FB::JSObjectPtr& callback);
	void gotCheckForUpdate(const FB::JSObjectPtr& callback, 
									   bool success,
									   const FB::HeaderMap& headers,
									   const boost::shared_array<uint8_t>& data,
									   const size_t size);
	void downloadProgram(const std::wstring& val, const std::string& version, const FB::JSObjectPtr& callback);
	std::wstring getInstallPath(const std::wstring& val);
	std::wstring getInstallVersion(const std::wstring& val);
	FB::variant runProgram(const std::wstring& val, const FB::JSObjectPtr& callback);
	FB::VariantList isRunning(const std::wstring& val);
	FB::VariantList stopRunning(const std::wstring& val);

    // Event helpers
    FB_JSAPI_EVENT(fired, 3, (const FB::variant&, bool, int));
    FB_JSAPI_EVENT(echo, 2, (const FB::variant&, const int));
    FB_JSAPI_EVENT(notify, 0, ());

    // Method test-event
    void testEvent(const FB::variant& s);

private:
	bool isSupported(std::wstring program);

	void gotDownloadProgram(const FB::JSObjectPtr& callback, 
									std::wstring& program,
									std::string& version,
									bool success,
									const FB::HeaderMap& headers,
									const boost::shared_array<uint8_t>& data,
									const size_t size);
    btlauncherWeakPtr m_plugin;
    FB::BrowserHostPtr m_host;

    std::string m_testString;
};

#endif // H_btlauncherAPI

