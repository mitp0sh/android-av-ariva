.class public final Lcom/avira/android/vdfupdate/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VDFUPDTASK"

.field private static final UPDATE_STATE_POLL_PERIOD:I = 0x3e8


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/avira/android/vdfupdate/e;

.field private final e:Landroid/content/BroadcastReceiver;

.field private final f:Landroid/content/BroadcastReceiver;

.field private volatile g:Lcom/avira/android/vdfupdate/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/avira/android/vdfupdate/e;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/avira/android/vdfupdate/d;->a:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/avira/android/vdfupdate/d;->b:Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/vdfupdate/d;->c:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/avira/android/vdfupdate/d;->d:Lcom/avira/android/vdfupdate/e;

    .line 38
    new-instance v0, Lcom/avira/android/vdfupdate/g;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/vdfupdate/g;-><init>(Lcom/avira/android/vdfupdate/d;B)V

    iput-object v0, p0, Lcom/avira/android/vdfupdate/d;->e:Landroid/content/BroadcastReceiver;

    .line 39
    new-instance v0, Lcom/avira/android/vdfupdate/h;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/vdfupdate/h;-><init>(Lcom/avira/android/vdfupdate/d;B)V

    iput-object v0, p0, Lcom/avira/android/vdfupdate/d;->f:Landroid/content/BroadcastReceiver;

    .line 40
    sget-object v0, Lcom/avira/android/vdfupdate/f;->FAILED:Lcom/avira/android/vdfupdate/f;

    iput-object v0, p0, Lcom/avira/android/vdfupdate/d;->g:Lcom/avira/android/vdfupdate/f;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/avira/android/vdfupdate/d;Lcom/avira/android/vdfupdate/f;)Lcom/avira/android/vdfupdate/f;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/avira/android/vdfupdate/d;->g:Lcom/avira/android/vdfupdate/f;

    return-object p1
.end method

.method private varargs b()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->b()Lcom/avira/android/antivirus/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/antivirus/h;->a()V

    .line 72
    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/avira/android/vdfupdate/d;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/avira/android/antivirus/af;->c()Lcom/avira/android/antivirus/ae;

    move-result-object v0

    sget-object v1, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IN_PROGRESS:Lcom/avira/android/antivirus/ae;

    if-eq v0, v1, :cond_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/avira/android/vdfupdate/d;->a()V

    .line 98
    iget-object v0, p0, Lcom/avira/android/vdfupdate/d;->d:Lcom/avira/android/vdfupdate/e;

    iget-object v1, p0, Lcom/avira/android/vdfupdate/d;->g:Lcom/avira/android/vdfupdate/f;

    iget-object v2, p0, Lcom/avira/android/vdfupdate/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/avira/android/vdfupdate/e;->a(Lcom/avira/android/vdfupdate/f;Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/avira/android/vdfupdate/d;->g:Lcom/avira/android/vdfupdate/f;

    sget-object v1, Lcom/avira/android/vdfupdate/f;->UPDATE_SUCCESSFULL:Lcom/avira/android/vdfupdate/f;

    if-ne v0, v1, :cond_0

    .line 100
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "phone_has_vdf"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/vdfupdate/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avira/android/vdfupdate/d;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    iget-object v0, p0, Lcom/avira/android/vdfupdate/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avira/android/vdfupdate/d;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/avira/android/vdfupdate/d;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 129
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/avira/android/vdfupdate/d;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/avira/android/vdfupdate/d;->c()V

    .line 93
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/avira/android/vdfupdate/d;->c()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/vdfupdate/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avira/android/vdfupdate/d;->e:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.avira.android.ACTION_VDF_DOWNLOAD_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    iget-object v0, p0, Lcom/avira/android/vdfupdate/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avira/android/vdfupdate/d;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.avira.android.ACTION_UPDATER_FAILED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/avira/android/vdfupdate/d;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 59
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    const-string v0, "vdf_update_time_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nextVdfCheck"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "VDFUPDTASK"

    const-string v1, "SharedPreferences change event received!"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/avira/android/vdfupdate/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/avira/android/vdfupdate/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/avira/android/vdfupdate/f;->UPDATE_SUCCESSFULL:Lcom/avira/android/vdfupdate/f;

    :goto_0
    iput-object v0, p0, Lcom/avira/android/vdfupdate/d;->g:Lcom/avira/android/vdfupdate/f;

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avira/android/vdfupdate/d;->cancel(Z)Z

    .line 114
    :cond_1
    return-void

    .line 110
    :cond_2
    sget-object v0, Lcom/avira/android/vdfupdate/f;->NO_UPDATES:Lcom/avira/android/vdfupdate/f;

    goto :goto_0
.end method
