.class final Lcom/avira/android/license/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/license/ThirdPartyLicenseActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/license/ThirdPartyLicenseActivity;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/avira/android/license/a;->a:Lcom/avira/android/license/ThirdPartyLicenseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avira/android/license/a;->a:Lcom/avira/android/license/ThirdPartyLicenseActivity;

    const-string v1, "third_party_licenses"

    invoke-static {v0, v1}, Lcom/avira/android/license/ThirdPartyLicenseActivity;->a(Lcom/avira/android/license/ThirdPartyLicenseActivity;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/avira/android/license/a;->a:Lcom/avira/android/license/ThirdPartyLicenseActivity;

    new-instance v1, Lcom/avira/android/license/b;

    invoke-direct {v1, p0}, Lcom/avira/android/license/b;-><init>(Lcom/avira/android/license/a;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/license/ThirdPartyLicenseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method
