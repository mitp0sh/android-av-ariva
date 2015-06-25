.class public Lcom/avira/android/remotecomponents/LockMessageCommandIntegrator;
.super Lcom/avira/android/remotecomponents/CommandIntegrator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/common/web/WebResult;)V
    .locals 3

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/avira/android/common/web/m;

    invoke-direct {v1}, Lcom/avira/android/common/web/m;-><init>()V

    invoke-static {v0, v1, p0}, Lcom/avira/android/utilities/p;->a(Ljava/lang/String;Lcom/avira/android/utilities/o;Lcom/avira/android/remotecomponents/CommandIntegrator;)Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    .line 18
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avira.android.ACTION_UPDATE_LOCKSCREEN_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v2, "bundle_data_tag"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    invoke-static {v1}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 22
    return-void
.end method
