.class public Lcom/avira/android/antivirus/AutoUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION_AUTO_UPDATE_ANTIVIRUS:Ljava/lang/String; = "com.avira.android.ACTION_AUTO_UPDATE_ANTIVIRUS"

.field public static final ACTION_UPDATE_ANTIVIRUS:Ljava/lang/String; = "com.avira.android.ACTION_UPDATE_ANTIVIRUS"

.field public static final AUTO_UPDATE_NONPREMIUM_INTERVAL:J = 0x5265c00L

.field public static final AUTO_UPDATE_PREMIUM_INTERVAL:J = 0x36ee80L

.field public static final NEXT_VDF_CHECK_PREF:Ljava/lang/String; = "nextVdfCheck"

.field private static final TAG:Ljava/lang/String; = "AUTO_UPDTR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    const-string v1, "nextVdfCheck"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/antivirus/AutoUpdateReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string v1, "com.avira.android.ACTION_UPDATE_ANTIVIRUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    return-object v0
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    const-string v1, "nextVdfCheck"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    return-void
.end method

.method private static a(Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    .line 114
    const-string v0, "alarm"

    invoke-virtual {v2, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 115
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/avira/android/antivirus/AutoUpdateReceiver;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.avira.android.ACTION_AUTO_UPDATE_ANTIVIRUS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-static {v2, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 118
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 120
    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v4, 0x36ee80

    .line 123
    :goto_0
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a()J

    move-result-wide v2

    .line 126
    :goto_1
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 129
    invoke-static {v2, v3}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a(J)V

    .line 130
    return-void

    .line 120
    :cond_0
    const-wide/32 v4, 0x5265c00

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a(Z)V

    .line 101
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a(Z)V

    .line 109
    return-void
.end method

.method public static d()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 179
    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 183
    invoke-static {v2}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a(Z)V

    .line 190
    :goto_1
    return-void

    .line 179
    :cond_0
    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v4, 0x36ee80

    :goto_2
    cmp-long v0, v6, v4

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0x5265c00

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_0

    .line 187
    :cond_3
    invoke-static {v1}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "AUTO_UPDTR"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    const-string v1, "com.avira.android.ACTION_UPDATE_ANTIVIRUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.avira.android.ACTION_AUTO_UPDATE_ANTIVIRUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    const-string v1, "com.avira.android.ACTION_AUTO_UPDATE_ANTIVIRUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    invoke-static {}, Lcom/avira/android/vdfupdate/i;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/avira/android/vdfupdate/i;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    const-string v0, "Perform schedule auto component update..."

    .line 52
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v1, "AUTO_UPDTR"

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/antivirus/i;->b(Ljava/lang/String;)V

    .line 56
    :cond_3
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-class v0, Lcom/avira/android/antivirus/AutoUpdateReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performing xVDF update"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->b()Lcom/avira/android/antivirus/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/antivirus/h;->a()V

    .line 61
    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/32 v0, 0x36ee80

    .line 64
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 65
    invoke-static {v0, v1}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a(J)V

    goto :goto_0

    .line 61
    :cond_4
    const-wide/32 v0, 0x5265c00

    goto :goto_1
.end method
