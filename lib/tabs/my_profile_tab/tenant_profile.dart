import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_ui/models/tenant.dart';
import 'package:rental_ui/tabs/sign_in_tab/create_and_edit_profile.dart';

class TenantProfile extends StatefulWidget {
  TenantProfile();

  @override
  _TenantProfileState createState() => _TenantProfileState();
}

class _TenantProfileState extends State<TenantProfile> {
  @override
  Widget build(BuildContext context) {
    return CreateEditProfile(TenantStatus.RESIDENT);
  }
}
