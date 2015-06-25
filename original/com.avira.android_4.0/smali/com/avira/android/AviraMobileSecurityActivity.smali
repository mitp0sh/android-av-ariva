.class public Lcom/avira/android/AviraMobileSecurityActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/avira/android/AviraMobileSecurityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/iab/a/k;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/avira/android/iab/s;->c()V

    .line 23
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->j()V

    .line 24
    invoke-virtual {p0}, Lcom/avira/android/AviraMobileSecurityActivity;->finish()V

    .line 25
    return-void
.end method
