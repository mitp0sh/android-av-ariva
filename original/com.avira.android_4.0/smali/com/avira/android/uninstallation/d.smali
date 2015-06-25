.class final Lcom/avira/android/uninstallation/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/uninstallation/UninstallationActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/uninstallation/UninstallationActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/avira/android/uninstallation/d;->a:Lcom/avira/android/uninstallation/UninstallationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avira/android/uninstallation/d;->a:Lcom/avira/android/uninstallation/UninstallationActivity;

    invoke-static {v0}, Lcom/avira/android/uninstallation/UninstallationActivity;->a(Lcom/avira/android/uninstallation/UninstallationActivity;)Lcom/avira/android/uninstallation/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/uninstallation/e;->e()V

    .line 91
    return-void
.end method
