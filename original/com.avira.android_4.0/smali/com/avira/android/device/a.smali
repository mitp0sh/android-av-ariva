.class public final Lcom/avira/android/device/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALID_MANUFACTURER_SERIAL_NUMBER:Ljava/lang/String; = "00000000000"

.field private static final MANUFACTURER_SERIAL_NUMBER_FIELD_NAME:Ljava/lang/String; = "ril.serialnumber"

.field public static final PREF_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final SERIAL_NUMBER_FIELD_NAME:Ljava/lang/String; = "ro.serialno"


# direct methods
.method public static declared-synchronized a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    const-class v1, Lcom/avira/android/device/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    .line 198
    const-string v2, "device_id"

    invoke-static {v0, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    new-instance v2, Lcom/avira/android/device/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/avira/android/device/c;-><init>(B)V

    invoke-static {v2}, Lcom/avira/android/device/a;->a(Lcom/avira/android/device/b;)Ljava/lang/String;

    move-result-object v2

    .line 201
    const-string v3, "device_id"

    invoke-static {v0, v3, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/avira/android/b;->a()Lcom/avira/android/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/avira/android/b;->a(Ljava/lang/String;)V

    .line 207
    :cond_0
    const-string v2, "device_id"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/avira/android/device/b;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 164
    invoke-interface {p0}, Lcom/avira/android/device/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    const-string v2, "unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-interface {p0, v0}, Lcom/avira/android/device/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 177
    :cond_0
    invoke-interface {p0, v1}, Lcom/avira/android/device/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Lcom/avira/android/device/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 181
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 183
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-interface {p0, v1}, Lcom/avira/android/device/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    :cond_1
    return-object v1

    .line 180
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 265
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 266
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 267
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, "unknown"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 276
    :goto_0
    return-object v0

    .line 273
    :catch_0
    move-exception v0

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcom/avira/android/device/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avira/android/device/d;-><init>(B)V

    invoke-static {v0}, Lcom/avira/android/device/a;->a(Lcom/avira/android/device/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    const-string v0, "ril.serialnumber"

    invoke-static {v0}, Lcom/avira/android/device/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_1

    const-string v3, "00000000000"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_0
    if-nez v3, :cond_0

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v0, v3, :cond_2

    const-string v0, "unknown"

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 233
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 240
    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move v3, v2

    .line 229
    goto :goto_0

    :cond_2
    move v0, v2

    .line 231
    goto :goto_1

    .line 237
    :cond_3
    const-string v0, "ro.serialno"

    invoke-static {v0}, Lcom/avira/android/device/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 299
    const-string v1, "unknown"

    if-ne v0, v1, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 304
    :cond_0
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 318
    const-string v1, "unknown"

    if-ne v0, v1, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 323
    :cond_0
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 349
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/ApplicationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_0

    const-string v2, "level"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const-string v0, "level"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    :cond_0
    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 369
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 399
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 401
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 402
    const-string v0, ""

    .line 404
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 406
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_0
    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 439
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 441
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 442
    const-string v0, ""

    .line 444
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 446
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 449
    :cond_0
    return-object v0
.end method

.method public static j()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 463
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 464
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 466
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 468
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_0
    return-object v2
.end method

.method public static k()I
    .locals 5

    .prologue
    .line 509
    const/4 v0, -0x1

    .line 510
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 513
    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avira/android/ApplicationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 515
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    return v0

    .line 517
    :catch_0
    move-exception v1

    .line 519
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "DeviceInfo"

    const-string v4, "NameNotFoundException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    invoke-static {}, Lcom/avira/android/device/a;->p()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_0

    .line 535
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 537
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avira/android/device/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/avira/android/device/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const v1, 0x7f08008d

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 588
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->f()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 589
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    const-class v3, Lcom/avira/android/deviceadmin/DeviceAdminReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    const-string v0, "ON"

    .line 595
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "OFF"

    goto :goto_0
.end method

.method private static p()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 544
    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 545
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 550
    :goto_0
    return-object v0

    .line 547
    :catch_0
    move-exception v0

    .line 549
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "DeviceInfo"

    const-string v3, "getPackageInfo() NameNotFoundException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    const/4 v0, 0x0

    goto :goto_0
.end method
