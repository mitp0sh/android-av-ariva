.class public Lcom/avira/android/googleconnect/GoogleConnectActivity;
.super Lcom/avira/android/googleconnect/GoogleTemplateActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/avira/android/googleconnect/GoogleConnectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/googleconnect/GoogleConnectActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avira/android/googleconnect/GoogleTemplateActivity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/avira/android/googleconnect/GoogleConnectActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/googleconnect/GoogleConnectActivity;)V
    .locals 8

    .prologue
    .line 25
    sget-object v0, Lcom/avira/android/googleconnect/GoogleConnectActivity;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avira/android/googleconnect/GoogleConnectActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "Bubu1"

    const-string v3, "bubu1"

    const-string v4, "bubu1"

    sget-object v5, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    sget-object v6, Lcom/avira/android/custom/aa;->InfoIcon:Lcom/avira/android/custom/aa;

    const/4 v6, 0x0

    sget-object v7, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-virtual/range {v0 .. v7}, Lcom/avira/android/ApplicationService;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)V

    invoke-virtual {p0}, Lcom/avira/android/googleconnect/GoogleConnectActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/plus/a/b/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/avira/android/common/web/d;->a()Lcom/avira/android/common/web/d;

    move-result-object v0

    new-instance v1, Lcom/avira/android/googleconnect/b;

    invoke-direct {v1, p0}, Lcom/avira/android/googleconnect/b;-><init>(Lcom/avira/android/googleconnect/GoogleConnectActivity;)V

    invoke-virtual {v0, p2, p3, p1, v1}, Lcom/avira/android/common/web/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/a/b/a;Lcom/avira/applock/common/web/a;)V

    .line 90
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Lcom/avira/android/googleconnect/GoogleConnectActivity;->setContentView(I)V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/avira/android/googleconnect/a;

    invoke-direct {v1, p0}, Lcom/avira/android/googleconnect/a;-><init>(Lcom/avira/android/googleconnect/GoogleConnectActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    return-void
.end method
