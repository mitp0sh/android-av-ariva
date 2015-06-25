.class public final Lcom/avira/android/dashboard/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_SET_DEVICE_ADMINISTRATOR_SETTING_RESULT:I = 0x64


# instance fields
.field private final a:Lcom/avira/android/dashboard/x;

.field private final b:Lcom/avira/android/custom/BaseFragmentActivity;

.field private final c:Landroid/content/ComponentName;

.field private final d:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Lcom/avira/android/dashboard/x;)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/avira/android/dashboard/m;->a:Lcom/avira/android/dashboard/x;

    .line 40
    invoke-interface {p1}, Lcom/avira/android/dashboard/x;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/dashboard/m;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 41
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->f()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/dashboard/m;->d:Landroid/app/admin/DevicePolicyManager;

    .line 42
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/avira/android/dashboard/m;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v2, Lcom/avira/android/deviceadmin/DeviceAdminReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/m;->c:Landroid/content/ComponentName;

    .line 43
    invoke-direct {p0}, Lcom/avira/android/dashboard/m;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/m;->a(Z)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/avira/android/dashboard/m;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avira/android/dashboard/m;->c:Landroid/content/ComponentName;

    return-object v0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/avira/android/dashboard/m;->a:Lcom/avira/android/dashboard/x;

    if-eqz p1, :cond_0

    const v0, 0x7f080225

    :goto_0
    invoke-interface {v1, v0}, Lcom/avira/android/dashboard/x;->a(I)V

    .line 63
    return-void

    .line 62
    :cond_0
    const v0, 0x7f080224

    goto :goto_0
.end method

.method static synthetic b(Lcom/avira/android/dashboard/m;)Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avira/android/dashboard/m;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avira/android/dashboard/m;->d:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/avira/android/dashboard/m;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/avira/android/dashboard/m;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 71
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Lcom/avira/android/dashboard/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/dashboard/m;->d:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/avira/android/dashboard/m;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    invoke-direct {p0, v4}, Lcom/avira/android/dashboard/m;->a(Z)V

    .line 94
    :goto_1
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/m;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f08027c

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avira/android/dashboard/m;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f08019f

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avira/android/custom/x;->OkCancelButtons:Lcom/avira/android/custom/x;

    sget-object v5, Lcom/avira/android/custom/z;->TwoLineRegularHeaderContent:Lcom/avira/android/custom/z;

    invoke-static/range {v0 .. v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/avira/android/dashboard/n;

    invoke-direct {v1, p0}, Lcom/avira/android/dashboard/n;-><init>(Lcom/avira/android/dashboard/m;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    iget-object v1, p0, Lcom/avira/android/dashboard/m;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
