import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moor_flutter/moor_flutter.dart' as moor2;
import 'package:provider/provider.dart';
import 'package:rental_ui/constants/input_decorations.dart';
import 'package:rental_ui/constants/terms_and_conditions_global_keys.dart';
import 'package:rental_ui/moor/moor_db.dart' as moor;
import 'package:rental_ui/moor/moor_db.dart';
import 'package:rental_ui/tabs/main_page.dart';
import 'package:rental_ui/tabs/sign_in_tab/error_pane.dart';
import 'package:rental_ui/tabs/sign_in_tab/terms_and_conditions_tab.dart';

class CreateEditProfile extends StatefulWidget {
  final TenantStatus tenantStatus;

  CreateEditProfile(this.tenantStatus);

  @override
  _CreateEditProfileState createState() => _CreateEditProfileState();
}

enum TenantStatus {
  RESIDENT,
  GUEST,
}

class _CreateEditProfileState extends State<CreateEditProfile> {
  String _tenantFirstName = '';
  String _tenantLastName = '';
  String _tenantPhoneNumber = '';
  String _tenantOccupation = '';
  String _tenantIDNumber = '';
  String _tenantEmail = '';

  String _kin1FirstName = '';
  String _kin1LastName = '';
  String _kin1PhoneNumber = '';
  String _kin2FirstName = '';
  String _kin2LastName = '';
  String _kin2PhoneNumber = '';

  TextEditingController firstNameController;
  TextEditingController lastNameController;
  TextEditingController occupationController;
  TextEditingController emailAddressController;
  TextEditingController phoneNumberController;
  TextEditingController idNumberController;
  TextEditingController kin1FirstName;
  TextEditingController kin1LastName;
  TextEditingController kin1PhoneNumber;
  TextEditingController kin2FirstName;
  TextEditingController kin2LastName;
  TextEditingController kin2PhoneNumber;

  FocusNode focusNodeEmail;
  FocusNode focusNodePhone;
  FocusNode focusNodeID;
  FocusNode focusNodeFirstName;
  FocusNode focusNodeLastName;
  FocusNode focusNodeOccupation;
  FocusNode focusNodeKin1FirstName;
  FocusNode focusNodeKin1LastName;
  FocusNode focusNodeKin1PhoneNumber;
  FocusNode focusNodeKin2FirstName;
  FocusNode focusNodeKin2LastName;
  FocusNode focusNodeKin2PhoneNumber;

  bool checkedTermsAndConditions = false;
  bool isEditPage = false;
  bool isSaveChangesSignInButtonPressed = false;

  bool isFirstNameErrorIcon = false;
  bool isLastNameErrorIcon = false;
  bool isIDNumberErrorIcon = false;
  bool isPhoneNumberErrorIcon = false;

  bool showErrorPane = false;

  final _formKey = GlobalKey<FormState>();
  Future<Tenant> localDBTenant;

  @override
  void initState() {
    super.initState();
    // localDBTenant =
    //     Provider.of<TenantDao>(context).tenantsGenerated().getSingle();
    focusNodeEmail = FocusNode();
    focusNodePhone = FocusNode();
    focusNodeID = FocusNode();
    focusNodeFirstName = FocusNode();
    focusNodeLastName = FocusNode();
    focusNodeOccupation = FocusNode();
    focusNodeKin1FirstName = FocusNode();
    focusNodeKin1LastName = FocusNode();
    focusNodeKin1PhoneNumber = FocusNode();
    focusNodeKin2FirstName = FocusNode();
    focusNodeKin2LastName = FocusNode();
    focusNodeKin2PhoneNumber = FocusNode();

    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    occupationController = TextEditingController();
    emailAddressController = TextEditingController();
    phoneNumberController = TextEditingController();
    idNumberController = TextEditingController();
    kin1FirstName = TextEditingController();
    kin1LastName = TextEditingController();
    kin1PhoneNumber = TextEditingController();
    kin2FirstName = TextEditingController();
    kin2LastName = TextEditingController();
    kin2PhoneNumber = TextEditingController();

//      kin1FirstName.text=currentTenant.kin1firstName;
//      kin2FirstName.text=currentTenant.kin2firstName;
//      kin1LastName.text=currentTenant.kin1LastName;
//      kin2LastName.text=currentTenant.kin2LastName;
//      kin1PhoneNumber.text=currentTenant.kin1PhoneNumber;
//      kin2PhoneNumber.text=currentTenant.kin2PhoneNumber;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    localDBTenant =
        Provider.of<TenantDao>(context).tenantsGenerated().getSingle();
    return FutureBuilder<Tenant>(
      future: localDBTenant,
      builder: (context, AsyncSnapshot<Tenant> asyncSnapshot) {
        print("LocalDBTenant: ${asyncSnapshot.data}");
        if (asyncSnapshot.hasData) {
          setState(() {
            isEditPage = true;
          });
          Tenant currentTenant = asyncSnapshot.data;

          firstNameController.text = currentTenant.firstName;
          lastNameController.text = currentTenant.lastName;
          occupationController.text = currentTenant.occupation;
          emailAddressController.text = currentTenant.emailAddress;
          phoneNumberController.text = currentTenant.phoneNumber;
          idNumberController.text = currentTenant.idNumber;
        } else if (asyncSnapshot.hasError) {
          return Center(
            child: Text('An error has occured'),
          );
        }
        return Scaffold(
          appBar: AppBar(
            leading: isEditPage
                ? CloseButton()
                : Icon(
                    Icons.person,
                  ),
            title: Text(
              (isEditPage) ? 'EDIT PROFILE' : 'SIGN IN',
            ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              focusNode: focusNodeFirstName,
                              controller: firstNameController,
                              validator: (firstName) {
                                if (firstName.isEmpty) {
                                  setState(() {
                                    isFirstNameErrorIcon = true;
                                    showErrorPane = true;
                                  });
                                  return '';
                                } else {
                                  isFirstNameErrorIcon = false;
                                  return null;
                                }
                              },
                              decoration: signInInputDecor.copyWith(
                                labelText: 'First Name',
                                suffixIcon: (isFirstNameErrorIcon)
                                    ? Icon(Icons.error)
                                    : null,
                              ),
                              onSaved: (firstName) {
                                _tenantFirstName = firstName;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: lastNameController,
                              focusNode: focusNodeLastName,
                              onSaved: (lastName) {
                                _tenantLastName = lastName;
                              },
                              validator: (lastName) {
                                if (lastName.isEmpty) {
                                  setState(() {
                                    isLastNameErrorIcon = true;
                                    showErrorPane = true;
                                  });
                                  return '';
                                } else {
                                  isLastNameErrorIcon = false;
                                  return null;
                                }
                              },
                              decoration: signInInputDecor.copyWith(
                                labelText: 'Last Name',
                                suffixIcon: (isLastNameErrorIcon)
                                    ? Icon(Icons.error)
                                    : null,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: phoneNumberController,
                              focusNode: focusNodePhone,
                              validator: (phoneNumber) {
                                if (phoneNumber.isEmpty) {
                                  setState(() {
                                    isPhoneNumberErrorIcon = true;
                                    showErrorPane = true;
                                  });
                                  return '';
                                } else {
                                  isPhoneNumberErrorIcon = false;
                                  return null;
                                }
                              },
                              decoration: signInInputDecor.copyWith(
                                labelText: 'Phone Number',
                                suffixIcon: (isPhoneNumberErrorIcon)
                                    ? Icon(Icons.error)
                                    : null,
                              ),
                              onSaved: (phoneNumber) {
                                _tenantPhoneNumber = phoneNumber;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              focusNode: focusNodeID,
                              controller: idNumberController,
                              validator: (idNumber) {
                                if (idNumber.isEmpty) {
                                  setState(() {
                                    isIDNumberErrorIcon = true;
                                    showErrorPane = true;
                                  });
                                  return '';
                                } else {
                                  isIDNumberErrorIcon = false;
                                  return null;
                                }
                              },
                              decoration: signInInputDecor.copyWith(
                                labelText: 'ID Number',
                                suffixIcon: (isIDNumberErrorIcon)
                                    ? Icon(Icons.error)
                                    : null,
                              ),
                              onSaved: (idNumber) {
                                _tenantIDNumber = idNumber;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              focusNode: focusNodeEmail,
                              controller: emailAddressController,
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (emailAddress) {
                                _tenantEmail = emailAddress;
                              },
                              decoration: signInInputDecor.copyWith(
                                  labelText: 'Email Address'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: occupationController,
                              focusNode: focusNodeOccupation,
                              autocorrect: true,
                              onSaved: (occupation) {
                                _tenantOccupation = occupation;
                              },
                              decoration: signInInputDecor.copyWith(
                                  labelText: 'Occupation (optional)'),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            (isEditPage)
                                ? Container()
                                : Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                        key: termsConditionsKey,
                                        value: checkedTermsAndConditions,
                                        onChanged: (checked) {
                                          setState(() {
                                            checkedTermsAndConditions = checked;
                                          });
                                        },
                                      ),
                                      RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.brown,
                                              fontWeight: FontWeight.normal,
                                            ),
                                            text: 'I agree to the ',
                                          ),
                                          TextSpan(
                                            text: 'terms & conditions',
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () async {
                                                bool result =
                                                    await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) {
                                                      return TermsAndConditionsTab();
                                                    },
                                                  ),
                                                );
                                                setState(() {
                                                  checkedTermsAndConditions =
                                                      result;
                                                });
                                              },
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.brown,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]),
                                      )
                                    ],
                                  ),
                            SizedBox(
                              height: 1,
                            ),
                          ],
                        ),
                      ),
                      buildErrorPane(showErrorPane, checkedTermsAndConditions,
                          isSaveChangesSignInButtonPressed, isEditPage),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: TextButton(
                          child: Text(
                            (isEditPage) ? 'SAVE CHANGES' : 'SIGN IN',
                          ),
                          onPressed: () async {
                            setState(() {
                              isSaveChangesSignInButtonPressed = true;
                            });
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                              var tenantDao = Provider.of<TenantDao>(context,
                                  listen: false);
                              Tenant dbTenant = asyncSnapshot.data;
                              print("Pressed with dbTenant = ${dbTenant}");
                              if (dbTenant != null) {
                                await tenantDao.updateTenant(dbTenant.copyWith(
                                  firstName: _tenantFirstName.trim(),
                                  lastName: _tenantLastName.trim(),
                                  occupation: _tenantOccupation.trim(),
                                  phoneNumber: _tenantPhoneNumber.trim(),
                                  emailAddress: _tenantEmail.trim(),
                                  idNumber: _tenantIDNumber.trim(),
                                ));
                                //TODO update remote database
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MainPage();
                                    },
                                  ),
                                );
                              } else {
                                if (checkedTermsAndConditions) {
                                  //TODO notify backend of new sign up
                                  await tenantDao
                                      .insertTenant(new TenantsCompanion(
                                    firstName:
                                        moor2.Value(_tenantFirstName.trim()),
                                    lastName:
                                        moor2.Value(_tenantLastName.trim()),
                                    occupation:
                                        moor2.Value(_tenantOccupation.trim()),
                                    phoneNumber:
                                        moor2.Value(_tenantPhoneNumber.trim()),
                                    emailAddress:
                                        moor2.Value(_tenantEmail.trim()),
                                    idNumber:
                                        moor2.Value(_tenantIDNumber.trim()),
                                  ));
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return MainPage();
                                      },
                                    ),
                                  );
                                }
                              }
                            } else {
                              setState(() {
                                showErrorPane = true;
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget buildErrorPane(bool isNotFilledError, bool isChecked,
      bool isButtonPressed, bool isEditPage) {
    if (isNotFilledError && !isChecked && isButtonPressed && !isEditPage) {
      return ErrorPane(
          'Fill all the required fields and agree to the terms & conditions');
    } else if (isNotFilledError && isButtonPressed && !isEditPage) {
      return ErrorPane('Fill all the required fields');
    } else if (!isChecked && isButtonPressed && !isEditPage) {
      return ErrorPane('You have not agreed to the terms & conditions');
    } else {
      return Container();
    }
  }
}
