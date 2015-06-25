.class public Lcom/avira/android/debug/DebuggingPreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 48
    const-class v0, Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/debug/DebuggingPreferencesActivity;->b:Ljava/lang/String;

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/debug/DebuggingPreferencesActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-static {}, Lcom/avira/android/utilities/t;->c()V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "application/zip"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "message/rfc822"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "androidsolutionteam@gmail.com"

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    const-string v2, "Error log subject"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    const-string v2, "Error log body text"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    sget-object v2, Lcom/avira/android/utilities/FileProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "archived.zip"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, ".gm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gmail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v1}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/avira/android/debug/DebuggingPreferencesActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avira/android/debug/DebuggingPreferencesActivity;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 414
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/avira/android/iab/a/k;->b(JLandroid/content/Context;)V

    .line 415
    return-void
.end method

.method final b()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/avira/android/debug/DebuggingPreferencesActivity;->b:Ljava/lang/String;

    .line 420
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avira/android/premium/b;->a(Z)Z

    .line 421
    return-void
.end method

.method final c()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/avira/android/debug/DebuggingPreferencesActivity;->b:Ljava/lang/String;

    .line 426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    const-string v1, "Select Product SKU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 428
    sget-object v1, Lcom/avira/android/iab/a/k;->TEST_SKUS:[Ljava/lang/String;

    new-instance v2, Lcom/avira/android/debug/v;

    invoke-direct {v2, p0}, Lcom/avira/android/debug/v;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 440
    return-void
.end method

.method final d()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/avira/android/debug/DebuggingPreferencesActivity;->b:Ljava/lang/String;

    .line 445
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 446
    const-string v1, "Select forced server error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 447
    sget-object v1, Lcom/avira/android/iab/a/k;->TITLE_ERROR_CODES:[Ljava/lang/String;

    new-instance v2, Lcom/avira/android/debug/w;

    invoke-direct {v2, p0}, Lcom/avira/android/debug/w;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 459
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 460
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 54
    invoke-virtual {p0, v1}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->requestWindowFeature(I)Z

    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f0200be

    invoke-virtual {p0, v1, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->setFeatureDrawableResource(II)V

    .line 57
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->addPreferencesFromResource(I)V

    .line 59
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/avira/android/debug/DebuggingPreferencesActivity;->c:Landroid/preference/CheckBoxPreference;

    .line 61
    invoke-virtual {p0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 63
    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 64
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Lcom/avira/android/debug/g;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/g;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    :cond_0
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 84
    new-instance v1, Lcom/avira/android/debug/r;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/r;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    :cond_1
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_2

    .line 100
    new-instance v1, Lcom/avira/android/debug/x;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/x;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    :cond_2
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_3

    .line 116
    new-instance v1, Lcom/avira/android/debug/y;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/y;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 128
    :cond_3
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_4

    .line 131
    new-instance v1, Lcom/avira/android/debug/z;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/z;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 144
    :cond_4
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_5

    .line 147
    new-instance v1, Lcom/avira/android/debug/aa;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/aa;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 160
    :cond_5
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_6

    .line 163
    new-instance v1, Lcom/avira/android/debug/ab;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/ab;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 176
    :cond_6
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_7

    .line 179
    new-instance v1, Lcom/avira/android/debug/ac;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/ac;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    :cond_7
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_8

    .line 204
    new-instance v1, Lcom/avira/android/debug/ad;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/ad;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 215
    :cond_8
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_9

    .line 218
    new-instance v1, Lcom/avira/android/debug/h;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/h;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 232
    :cond_9
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_a

    .line 235
    new-instance v1, Lcom/avira/android/debug/i;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/i;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 247
    :cond_a
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_b

    .line 250
    new-instance v1, Lcom/avira/android/debug/j;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/j;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 264
    :cond_b
    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_c

    .line 267
    new-instance v1, Lcom/avira/android/debug/k;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/k;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 278
    :cond_c
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_d

    .line 281
    new-instance v1, Lcom/avira/android/debug/l;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/l;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 291
    :cond_d
    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_e

    .line 294
    new-instance v1, Lcom/avira/android/debug/m;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/m;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 305
    :cond_e
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_f

    .line 308
    new-instance v1, Lcom/avira/android/debug/n;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/n;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 319
    :cond_f
    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_10

    .line 322
    new-instance v1, Lcom/avira/android/debug/o;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/o;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 333
    :cond_10
    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_11

    .line 336
    new-instance v1, Lcom/avira/android/debug/p;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/p;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 349
    :cond_11
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_12

    .line 352
    new-instance v1, Lcom/avira/android/debug/q;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/q;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 366
    :cond_12
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_13

    .line 369
    new-instance v1, Lcom/avira/android/debug/s;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/s;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 379
    :cond_13
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_14

    .line 382
    new-instance v1, Lcom/avira/android/debug/t;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/t;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 394
    :cond_14
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_15

    .line 397
    new-instance v1, Lcom/avira/android/debug/u;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/u;-><init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 408
    :cond_15
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 467
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 468
    invoke-virtual {p0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 470
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 475
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/avira/android/debug/DebuggingPreferencesActivity;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/common/gcm/b;->b()V

    .line 482
    :cond_0
    return-void
.end method
