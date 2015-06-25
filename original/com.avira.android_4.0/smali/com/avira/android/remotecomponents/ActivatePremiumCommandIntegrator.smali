.class public Lcom/avira/android/remotecomponents/ActivatePremiumCommandIntegrator;
.super Lcom/avira/android/remotecomponents/CommandIntegrator;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public a:Lcom/avira/android/dashboard/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/avira/android/remotecomponents/ActivatePremiumCommandIntegrator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/remotecomponents/ActivatePremiumCommandIntegrator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>()V

    .line 33
    sget-object v0, Lcom/avira/android/dashboard/u;->REFRESH_FAIL:Lcom/avira/android/dashboard/u;

    iput-object v0, p0, Lcom/avira/android/remotecomponents/ActivatePremiumCommandIntegrator;->a:Lcom/avira/android/dashboard/u;

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/common/web/WebResult;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 38
    sget-object v0, Lcom/avira/android/remotecomponents/ActivatePremiumCommandIntegrator;->TAG:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/avira/android/common/web/m;

    invoke-direct {v1}, Lcom/avira/android/common/web/m;-><init>()V

    invoke-static {v0, v1, p0}, Lcom/avira/android/utilities/p;->a(Ljava/lang/String;Lcom/avira/android/utilities/o;Lcom/avira/android/remotecomponents/CommandIntegrator;)Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v1

    .line 44
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.avira.android.dashboard.ACTION_PREMIUM_RESULT"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/avira/android/dashboard/u;->REFRESH_FAIL:Lcom/avira/android/dashboard/u;

    iput-object v0, p0, Lcom/avira/android/remotecomponents/ActivatePremiumCommandIntegrator;->a:Lcom/avira/android/dashboard/u;

    .line 49
    sget-object v0, Lcom/avira/android/remotecomponents/ActivatePremiumCommandIntegrator;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/common/web/l;->a()Lcom/avira/android/common/web/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/avira/android/common/web/l;->b(I)Z

    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 52
    const-string v0, "errorMsg"

    invoke-virtual {v1, v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/avira/android/dashboard/q;->a(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/avira/android/dashboard/u;->REFRESH_APP_RESET:Lcom/avira/android/dashboard/u;

    move-object v1, p0

    .line 60
    :goto_0
    iput-object v0, v1, Lcom/avira/android/remotecomponents/ActivatePremiumCommandIntegrator;->a:Lcom/avira/android/dashboard/u;

    .line 63
    iget-object v0, p0, Lcom/avira/android/remotecomponents/ActivatePremiumCommandIntegrator;->a:Lcom/avira/android/dashboard/u;

    invoke-static {v0}, Lcom/avira/android/dashboard/q;->a(Lcom/avira/android/dashboard/u;)V

    .line 64
    invoke-static {v2}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 65
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/avira/android/remotecomponents/ActivatePremiumCommandIntegrator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getPremiumResult "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/avira/android/dashboard/u;->REFRESH_FAIL:Lcom/avira/android/dashboard/u;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v3

    invoke-static {v3}, Lcom/avira/android/common/web/q;->a(I)Lcom/avira/android/common/web/r;

    move-result-object v3

    sget-object v4, Lcom/avira/android/common/web/r;->Ok:Lcom/avira/android/common/web/r;

    if-ne v3, v4, :cond_1

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enabled"

    invoke-virtual {v1, v4}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    const-string v4, "premium"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/avira/android/iab/a/k;->a(JLandroid/content/Context;)V

    const-string v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v6}, Lcom/avira/android/premium/b;->a(Z)Z

    sget-object v0, Lcom/avira/android/dashboard/u;->REFRESH_SUCCESS:Lcom/avira/android/dashboard/u;

    :cond_1
    :goto_1
    move-object v1, p0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avira/android/premium/b;->a(Z)Z

    sget-object v0, Lcom/avira/android/dashboard/u;->REFRESH_INACTIVE_SUBSCRIPTION:Lcom/avira/android/dashboard/u;

    goto :goto_1
.end method
