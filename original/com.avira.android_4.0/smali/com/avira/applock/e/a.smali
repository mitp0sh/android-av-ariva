.class public final Lcom/avira/applock/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:Lcom/avira/applock/activities/AppListActivity;

.field private h:Landroid/app/ProgressDialog;

.field private i:I

.field private j:I

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/applock/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/applock/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/avira/applock/a/a;

.field private n:Landroid/content/SharedPreferences;

.field private o:J


# direct methods
.method public constructor <init>(Lcom/avira/applock/activities/AppListActivity;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "pre_setup_lock_selection_index_key"

    iput-object v0, p0, Lcom/avira/applock/e/a;->b:Ljava/lang/String;

    .line 50
    const-string v0, "recommended_apps_last_index_key"

    iput-object v0, p0, Lcom/avira/applock/e/a;->c:Ljava/lang/String;

    .line 52
    const/16 v0, 0x9

    iput v0, p0, Lcom/avira/applock/e/a;->d:I

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lcom/avira/applock/e/a;->e:I

    .line 54
    const/16 v0, 0xb

    iput v0, p0, Lcom/avira/applock/e/a;->f:I

    .line 70
    iput-object p1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    .line 72
    iget-object v0, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-virtual {v0}, Lcom/avira/applock/activities/AppListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/e/a;->a:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/e/a;->n:Landroid/content/SharedPreferences;

    .line 75
    return-void
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/avira/applock/e/a;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/b/a;

    .line 330
    invoke-virtual {v0, p2}, Lcom/avira/applock/b/a;->a(Z)V

    .line 331
    iget-object v1, p0, Lcom/avira/applock/e/a;->l:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {v0}, Lcom/avira/applock/b/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 335
    if-eqz p2, :cond_0

    .line 337
    iget-object v1, p0, Lcom/avira/applock/e/a;->k:Ljava/util/HashMap;

    new-instance v2, Lcom/avira/applock/b/d;

    invoke-direct {v2}, Lcom/avira/applock/b/d;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    iget-object v1, p0, Lcom/avira/applock/e/a;->k:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 344
    return-void

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/avira/applock/e/a;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/avira/applock/e/a;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/avira/applock/e/a;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 300
    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    if-eqz p1, :cond_0

    sget v0, Lcom/avira/applock/f;->app_list_screen_header_desc:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/avira/applock/activities/AppListActivity;->a(I)V

    .line 304
    iget-object v0, p0, Lcom/avira/applock/e/a;->m:Lcom/avira/applock/a/a;

    invoke-virtual {v0, p1}, Lcom/avira/applock/a/a;->a(Z)V

    .line 305
    iget-object v0, p0, Lcom/avira/applock/e/a;->m:Lcom/avira/applock/a/a;

    invoke-virtual {v0}, Lcom/avira/applock/a/a;->notifyDataSetChanged()V

    .line 306
    return-void

    .line 300
    :cond_0
    sget v0, Lcom/avira/applock/f;->app_list_screen_status_disabled:I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/avira/applock/e/a;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/b/d;

    .line 288
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/avira/applock/b/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/avira/applock/e/a;)Ljava/util/List;
    .locals 8

    .prologue
    .line 46
    iget-object v0, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-virtual {v0}, Lcom/avira/applock/activities/AppListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v0, 0x80

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/avira/applock/b/e;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/avira/applock/b/a;

    iget-object v7, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-static {v7, v5}, Lcom/avira/applock/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5}, Lcom/avira/applock/e/a;->a(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {v6, v1, v0, v7, v5}, Lcom/avira/applock/b/a;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/avira/applock/e/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/avira/applock/b/a;

    invoke-direct {p0, v5}, Lcom/avira/applock/e/a;->a(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {v6, v1, v0, v5}, Lcom/avira/applock/b/a;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/avira/applock/e/a;->j:I

    sget-object v0, Lcom/avira/applock/b/a;->a:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method static synthetic c(Lcom/avira/applock/e/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/avira/applock/e/a;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/avira/applock/e/a;)Lcom/avira/applock/a/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/avira/applock/e/a;->m:Lcom/avira/applock/a/a;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/avira/applock/e/a;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 271
    return-void
.end method

.method static synthetic e(Lcom/avira/applock/e/a;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/avira/applock/e/a;->g()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-static {v0}, Lcom/avira/applock/f/a;->a(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avira/applock/e/a;->o:J

    .line 384
    iget-object v0, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-static {v0}, Lcom/avira/applock/d/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/e/a;->k:Ljava/util/HashMap;

    .line 386
    new-instance v0, Lcom/avira/applock/e/b;

    invoke-direct {v0, p0, v2}, Lcom/avira/applock/e/b;-><init>(Lcom/avira/applock/e/a;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avira/applock/e/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 387
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/avira/applock/e/a;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/applock/e/a;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/avira/applock/e/a;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 456
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/avira/applock/e/a;->e()V

    .line 118
    iget-wide v0, p0, Lcom/avira/applock/e/a;->o:J

    iget-object v2, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-static {v2}, Lcom/avira/applock/f/a;->a(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/avira/applock/e/a;->f()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-static {v0}, Lcom/avira/applock/d/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/e/a;->k:Ljava/util/HashMap;

    .line 126
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 166
    invoke-direct {p0}, Lcom/avira/applock/e/a;->e()V

    .line 168
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 171
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    const-class v2, Lcom/avira/applock/activities/CreatePasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_create_pass_screen_mode"

    sget-object v2, Lcom/avira/applock/activities/b;->SETUP_PASSWORD:Lcom/avira/applock/activities/b;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-virtual {v1, v0, v4}, Lcom/avira/applock/activities/AppListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    if-ne p1, v4, :cond_3

    if-ne p2, v1, :cond_3

    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    const-class v2, Lcom/avira/applock/activities/SetupCompletedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-virtual {v1, v0}, Lcom/avira/applock/activities/AppListActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/avira/applock/e/a;->j:I

    if-ge v0, v1, :cond_2

    .line 182
    invoke-direct {p0, v0, v3}, Lcom/avira/applock/e/a;->a(IZ)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    :cond_2
    iget v0, p0, Lcom/avira/applock/e/a;->i:I

    invoke-direct {p0, v0, v3}, Lcom/avira/applock/e/a;->a(IZ)V

    .line 187
    iget-object v0, p0, Lcom/avira/applock/e/a;->m:Lcom/avira/applock/a/a;

    invoke-virtual {v0}, Lcom/avira/applock/a/a;->notifyDataSetChanged()V

    .line 190
    iget-object v0, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-static {v0, v3}, Lcom/avira/applock/service/AppLockerService;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 192
    :cond_3
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 195
    const-string v0, "extra_applock_feature_switch_new_state"

    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-static {v1}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 200
    invoke-direct {p0, v0}, Lcom/avira/applock/e/a;->a(Z)V

    .line 203
    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    sget v1, Lcom/avira/applock/f;->app_list_screen_status_enabled:I

    invoke-static {v0, v1}, Lcom/avira/applock/g/g;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final a(ILandroid/widget/CheckBox;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 236
    iget-object v2, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-static {v2}, Lcom/avira/applock/d/b;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-static {v2}, Lcom/avira/applock/d/b;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 239
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 243
    invoke-direct {p0, p1, v0}, Lcom/avira/applock/e/a;->a(IZ)V

    .line 253
    :goto_2
    return-void

    :cond_0
    move v2, v1

    .line 236
    goto :goto_0

    :cond_1
    move v0, v1

    .line 239
    goto :goto_1

    .line 248
    :cond_2
    iput p1, p0, Lcom/avira/applock/e/a;->i:I

    .line 251
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    const-class v2, Lcom/avira/applock/activities/CreatePinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_create_pin_screen_mode"

    sget-object v2, Lcom/avira/applock/activities/d;->SETUP_PIN:Lcom/avira/applock/activities/d;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/avira/applock/activities/AppListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/e/a;->l:Ljava/util/List;

    .line 96
    :goto_0
    new-instance v0, Lcom/avira/applock/a/a;

    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    iget-object v2, p0, Lcom/avira/applock/e/a;->l:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/avira/applock/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/avira/applock/e/a;->m:Lcom/avira/applock/a/a;

    .line 97
    iget-object v0, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    iget-object v1, p0, Lcom/avira/applock/e/a;->m:Lcom/avira/applock/a/a;

    invoke-virtual {v0, v1}, Lcom/avira/applock/activities/AppListActivity;->a(Landroid/widget/ListAdapter;)V

    .line 100
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avira/applock/e/a;->h:Landroid/app/ProgressDialog;

    .line 101
    iget-object v0, p0, Lcom/avira/applock/e/a;->h:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 102
    iget-object v0, p0, Lcom/avira/applock/e/a;->h:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    sget v2, Lcom/avira/applock/f;->loading:I

    invoke-virtual {v1, v2}, Lcom/avira/applock/activities/AppListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-static {v0}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/avira/applock/e/a;->a(Z)V

    .line 107
    invoke-direct {p0}, Lcom/avira/applock/e/a;->f()V

    .line 108
    return-void

    .line 91
    :cond_0
    const-string v0, "pre_setup_lock_selection_index_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avira/applock/e/a;->i:I

    .line 92
    const-string v0, "recommended_apps_last_index_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avira/applock/e/a;->j:I

    .line 93
    invoke-static {}, Lcom/avira/applock/b/g;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/e/a;->l:Ljava/util/List;

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/avira/applock/e/a;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 150
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 136
    const-string v0, "pre_setup_lock_selection_index_key"

    iget v1, p0, Lcom/avira/applock/e/a;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v0, "recommended_apps_last_index_key"

    iget v1, p0, Lcom/avira/applock/e/a;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    iget-object v0, p0, Lcom/avira/applock/e/a;->l:Ljava/util/List;

    invoke-static {v0}, Lcom/avira/applock/b/g;->a(Ljava/util/List;)V

    .line 142
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/avira/applock/e/a;->g()V

    .line 158
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    const-class v2, Lcom/avira/applock/activities/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    iget-object v1, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lcom/avira/applock/activities/AppListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 213
    const-string v0, "package_list_changed_time_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/avira/applock/e/a;->f()V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const-string v0, "applock_selection_map_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/avira/applock/e/a;->g:Lcom/avira/applock/activities/AppListActivity;

    invoke-static {v0}, Lcom/avira/applock/d/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/e/a;->k:Ljava/util/HashMap;

    goto :goto_0
.end method
