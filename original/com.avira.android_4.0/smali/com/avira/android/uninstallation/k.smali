.class final Lcom/avira/android/uninstallation/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/uninstallation/UninstallationSurveyActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/uninstallation/UninstallationSurveyActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/avira/android/uninstallation/k;->a:Lcom/avira/android/uninstallation/UninstallationSurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avira/android/ApplicationService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    iget-object v1, p0, Lcom/avira/android/uninstallation/k;->a:Lcom/avira/android/uninstallation/UninstallationSurveyActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    iget-object v0, p0, Lcom/avira/android/uninstallation/k;->a:Lcom/avira/android/uninstallation/UninstallationSurveyActivity;

    invoke-virtual {v0}, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->finish()V

    .line 67
    return-void
.end method
