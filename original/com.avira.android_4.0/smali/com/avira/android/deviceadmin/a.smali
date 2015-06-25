.class public final Lcom/avira/android/deviceadmin/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Lcom/avira/android/deviceadmin/a;


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "deviceAdminParams"

    sput-object v0, Lcom/avira/android/deviceadmin/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/deviceadmin/a;->c:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static a()Lcom/avira/android/deviceadmin/a;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/avira/android/deviceadmin/a;->b:Lcom/avira/android/deviceadmin/a;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/avira/android/deviceadmin/a;

    invoke-direct {v0}, Lcom/avira/android/deviceadmin/a;-><init>()V

    sput-object v0, Lcom/avira/android/deviceadmin/a;->b:Lcom/avira/android/deviceadmin/a;

    .line 40
    :cond_0
    sget-object v0, Lcom/avira/android/deviceadmin/a;->b:Lcom/avira/android/deviceadmin/a;

    return-object v0
.end method

.method private static a(Lcom/avira/android/remotecomponents/CommandIntegrator;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    const-string v0, "statusCode"

    invoke-virtual {p0, v0, p1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {p0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 103
    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/avira/android/deviceadmin/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "ON"

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "OFF"

    goto :goto_0
.end method

.method public static b(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/avira/android/deviceadmin/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avira/android/deviceadmin/a;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 2

    .prologue
    .line 58
    const-string v0, "deviceadmin"

    invoke-virtual {p1, v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e(Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/avira/android/deviceadmin/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OFF"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/avira/android/deviceadmin/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/avira/android/deviceadmin/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/avira/android/deviceadmin/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/avira/android/deviceadmin/a;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void

    .line 64
    :cond_1
    const-string v0, "FAILED"

    goto :goto_0
.end method
