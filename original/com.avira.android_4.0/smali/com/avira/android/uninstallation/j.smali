.class final Lcom/avira/android/uninstallation/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/uninstallation/UninstallationLandingPage;


# direct methods
.method constructor <init>(Lcom/avira/android/uninstallation/UninstallationLandingPage;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/avira/android/uninstallation/j;->a:Lcom/avira/android/uninstallation/UninstallationLandingPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/uninstallation/j;->a:Lcom/avira/android/uninstallation/UninstallationLandingPage;

    const-class v2, Lcom/avira/android/uninstallation/UninstallationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    iget-object v1, p0, Lcom/avira/android/uninstallation/j;->a:Lcom/avira/android/uninstallation/UninstallationLandingPage;

    invoke-virtual {v1, v0}, Lcom/avira/android/uninstallation/UninstallationLandingPage;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method
