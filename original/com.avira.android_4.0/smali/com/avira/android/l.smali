.class public final Lcom/avira/android/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FEATRINTG"

.field private static a:Lcom/avira/android/l;


# instance fields
.field private b:Lcom/avira/android/c/a;

.field private c:Lcom/avira/android/antitheft/yell/b;

.field private d:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

.field private e:Lcom/avira/android/deviceadmin/a;

.field private final f:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/avira/android/l;->b:Lcom/avira/android/c/a;

    .line 32
    iput-object v0, p0, Lcom/avira/android/l;->c:Lcom/avira/android/antitheft/yell/b;

    .line 33
    iput-object v0, p0, Lcom/avira/android/l;->d:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    .line 34
    iput-object v0, p0, Lcom/avira/android/l;->e:Lcom/avira/android/deviceadmin/a;

    .line 41
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/l;->f:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/avira/android/c/a;->a()Lcom/avira/android/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/l;->b:Lcom/avira/android/c/a;

    .line 43
    invoke-static {}, Lcom/avira/android/antitheft/yell/b;->a()Lcom/avira/android/antitheft/yell/b;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/l;->c:Lcom/avira/android/antitheft/yell/b;

    .line 44
    invoke-static {}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a()Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/l;->d:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    .line 45
    invoke-static {}, Lcom/avira/android/deviceadmin/a;->a()Lcom/avira/android/deviceadmin/a;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/l;->e:Lcom/avira/android/deviceadmin/a;

    .line 46
    return-void
.end method

.method public static a()Lcom/avira/android/l;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/avira/android/l;->a:Lcom/avira/android/l;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/avira/android/l;

    invoke-direct {v0}, Lcom/avira/android/l;-><init>()V

    sput-object v0, Lcom/avira/android/l;->a:Lcom/avira/android/l;

    .line 59
    :cond_0
    sget-object v0, Lcom/avira/android/l;->a:Lcom/avira/android/l;

    return-object v0
.end method

.method public static c(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 2

    .prologue
    .line 145
    const-string v0, "batteryLevel"

    invoke-static {}, Lcom/avira/android/device/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/device/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phoneNumber"

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mobileNetworkCode"

    invoke-static {}, Lcom/avira/android/device/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mobileCountryCode"

    invoke-static {}, Lcom/avira/android/device/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "statusCode"

    const-string v1, "OK"

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "versionNo"

    invoke-static {}, Lcom/avira/android/device/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "devAdmin"

    invoke-static {}, Lcom/avira/android/device/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "osVersion"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {p0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 146
    return-void
.end method

.method public static f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 193
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 194
    const-string v2, "bundle_data_tag"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 196
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->a(Landroid/os/Message;)V

    .line 197
    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 2

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 85
    new-instance p1, Lcom/avira/android/remotecomponents/WipeCommandIntegrator;

    const-string v0, "wipe"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/avira/android/remotecomponents/WipeCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/avira/android/l;->d:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-virtual {v0, p1}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 88
    return-void
.end method

.method public final a(Lcom/avira/android/remotecomponents/CommandIntegrator;Z)V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/a;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "FEATRINTG"

    const-string v1, "Phone Call in Progress, Abort remote yell."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 120
    :cond_0
    if-eqz p2, :cond_1

    .line 122
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "FEATRINTG"

    const-string v1, "Calling for RemoteScream with Activity."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/avira/android/l;->f:Landroid/content/Context;

    const-class v2, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 125
    const-string v1, "bundle_data_tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/avira/android/l;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "FEATRINTG"

    const-string v1, "Calling for RemoteScream without Activity."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/avira/android/l;->c:Lcom/avira/android/antitheft/yell/b;

    invoke-virtual {v0, p1}, Lcom/avira/android/antitheft/yell/b;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    goto :goto_0
.end method

.method public final b(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avira/android/l;->b:Lcom/avira/android/c/a;

    invoke-virtual {v0, p1}, Lcom/avira/android/c/a;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 99
    return-void
.end method

.method public final d(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/avira/android/l;->e:Lcom/avira/android/deviceadmin/a;

    invoke-virtual {v0, p1}, Lcom/avira/android/deviceadmin/a;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 157
    return-void
.end method

.method public final e(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/avira/android/l;->e:Lcom/avira/android/deviceadmin/a;

    invoke-static {p1}, Lcom/avira/android/deviceadmin/a;->b(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 168
    return-void
.end method
