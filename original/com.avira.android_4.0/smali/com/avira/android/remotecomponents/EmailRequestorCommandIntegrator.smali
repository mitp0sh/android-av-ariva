.class public Lcom/avira/android/remotecomponents/EmailRequestorCommandIntegrator;
.super Lcom/avira/android/remotecomponents/CommandIntegrator;
.source "SourceFile"


# static fields
.field private static final EMAIL_ADDRESS_ACTION:Ljava/lang/String; = "com.avira.android.ACTION_EMAIL_ADDRESS"


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
    .line 17
    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/avira/android/common/web/m;

    invoke-direct {v1}, Lcom/avira/android/common/web/m;-><init>()V

    invoke-static {v0, v1, p0}, Lcom/avira/android/utilities/p;->a(Ljava/lang/String;Lcom/avira/android/utilities/o;Lcom/avira/android/remotecomponents/CommandIntegrator;)Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/avira/android/common/web/l;->a()Lcom/avira/android/common/web/l;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/avira/android/common/web/l;->b(I)Z

    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 24
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    sget-object v2, Lcom/avira/android/h;->RESET_ONLY:Lcom/avira/android/h;

    invoke-virtual {v1, v2}, Lcom/avira/android/ApplicationService;->a(Lcom/avira/android/h;)V

    .line 27
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avira.android.ACTION_EMAIL_ADDRESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v2, "bundle_data_tag"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 29
    invoke-static {v1}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 30
    return-void
.end method
