.class final Lcom/avira/android/uninstallation/i;
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
    .line 41
    iput-object p1, p0, Lcom/avira/android/uninstallation/i;->a:Lcom/avira/android/uninstallation/UninstallationLandingPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avira/android/uninstallation/i;->a:Lcom/avira/android/uninstallation/UninstallationLandingPage;

    invoke-virtual {v0}, Lcom/avira/android/uninstallation/UninstallationLandingPage;->finish()V

    .line 46
    return-void
.end method
