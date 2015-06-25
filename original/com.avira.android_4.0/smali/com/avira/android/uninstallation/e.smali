.class public final Lcom/avira/android/uninstallation/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUTTON_PADDING_IN_DP:I = 0xc


# instance fields
.field private a:Lcom/avira/android/uninstallation/a;

.field private b:Landroid/os/Handler;

.field private c:Lcom/avira/android/custom/BaseFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/avira/android/uninstallation/a;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/avira/android/uninstallation/e;->a:Lcom/avira/android/uninstallation/a;

    .line 45
    iget-object v0, p0, Lcom/avira/android/uninstallation/e;->a:Lcom/avira/android/uninstallation/a;

    invoke-interface {v0}, Lcom/avira/android/uninstallation/a;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/avira/android/uninstallation/e;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/avira/android/uninstallation/e;->g()V

    return-void
.end method

.method static synthetic b(Lcom/avira/android/uninstallation/e;)Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/avira/android/uninstallation/e;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avira/android/uninstallation/e;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Lcom/avira/android/deviceadmin/b;->a()Z

    move-result v2

    .line 163
    iget-object v0, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f08027e

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-object v3, p0, Lcom/avira/android/uninstallation/e;->a:Lcom/avira/android/uninstallation/a;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3, v0}, Lcom/avira/android/uninstallation/a;->a(Z)V

    .line 167
    if-eqz v2, :cond_1

    .line 169
    iget-object v0, p0, Lcom/avira/android/uninstallation/e;->a:Lcom/avira/android/uninstallation/a;

    iget-object v2, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080279

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/avira/android/uninstallation/a;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 178
    :goto_1
    iget-object v1, p0, Lcom/avira/android/uninstallation/e;->a:Lcom/avira/android/uninstallation/a;

    invoke-interface {v1, v0}, Lcom/avira/android/uninstallation/a;->b(Ljava/lang/String;)V

    .line 179
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/avira/android/uninstallation/e;->a:Lcom/avira/android/uninstallation/a;

    iget-object v1, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v2, 0x7f08027a

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avira/android/uninstallation/a;->a(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f08027f

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/avira/android/uninstallation/f;

    invoke-direct {v0, p0}, Lcom/avira/android/uninstallation/f;-><init>(Lcom/avira/android/uninstallation/e;)V

    iput-object v0, p0, Lcom/avira/android/uninstallation/e;->b:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/avira/android/uninstallation/e;->g()V

    .line 75
    return-void
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 82
    invoke-static {}, Lcom/avira/android/deviceadmin/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f08027c

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f08027d

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avira/android/custom/x;->OkCancelButtons:Lcom/avira/android/custom/x;

    sget-object v4, Lcom/avira/android/custom/aa;->WarningIcon:Lcom/avira/android/custom/aa;

    const/4 v4, 0x0

    sget-object v5, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-static/range {v0 .. v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/avira/android/uninstallation/g;

    invoke-direct {v1, p0}, Lcom/avira/android/uninstallation/g;-><init>(Lcom/avira/android/uninstallation/e;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    .line 125
    iget-object v1, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 138
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/avira/android/deviceadmin/DeviceAdminReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    const-string v0, "android.app.extra.ADD_EXPLANATION"

    iget-object v2, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080145

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v2, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    iget-object v1, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 155
    return-void
.end method

.method public final f()I
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/avira/android/uninstallation/e;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 189
    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
