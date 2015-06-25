.class public Lcom/avira/android/antivirus/OEScanResultDialogActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"


# static fields
.field public static final DIALOG_MESSAGE_TAG:Ljava/lang/String; = "dialog_message_tag"

.field public static final PACKAGE_NAME_TAG:Ljava/lang/String; = "package_name_tag"

.field public static final SCAN_RESULT_TAG:Ljava/lang/String; = "scan_result_tag"

.field public static a:Z

.field public static b:Z


# instance fields
.field private c:Lcom/avira/android/custom/OEMessageDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->a:Z

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 57
    const-string v0, "dialog_message_tag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    const-string v0, "scan_result_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    invoke-static {}, Lcom/avira/android/a/c;->a()Lcom/avira/android/a/c;

    move-result-object v0

    const-string v1, "package_name_tag"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/a/c;->a(Ljava/lang/String;)Lcom/avira/android/a/b;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/avira/android/antivirus/data/g;

    invoke-virtual {v0, v1}, Lcom/avira/android/a/c;->a(Ljava/lang/String;)Lcom/avira/android/a/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/avira/android/antivirus/data/g;-><init>(Lcom/avira/android/a/a;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_2

    aget-object v0, v2, v1

    check-cast v0, Lcom/avira/android/antivirus/data/ScannerCallbackData;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannerCallbackData;->getInfectedFileInfoList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/ScannedFileInfo;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannedFileInfo;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/MalwareInfo;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/MalwareInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/avira/android/antivirus/data/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const v0, 0x7f080297

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/avira/android/custom/x;->UninstallCloseButtons:Lcom/avira/android/custom/x;

    sget-object v4, Lcom/avira/android/custom/aa;->WarningIcon:Lcom/avira/android/custom/aa;

    sget-object v4, Lcom/avira/android/custom/z;->DetectionWarningContent:Lcom/avira/android/custom/z;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;Lcom/avira/android/custom/z;Lcom/avira/android/antivirus/data/a;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->c:Lcom/avira/android/custom/OEMessageDialogFragment;

    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->c:Lcom/avira/android/custom/OEMessageDialogFragment;

    new-instance v1, Lcom/avira/android/antivirus/as;

    invoke-direct {v1, p0, v3}, Lcom/avira/android/antivirus/as;-><init>(Lcom/avira/android/antivirus/OEScanResultDialogActivity;Lcom/avira/android/antivirus/data/a;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->c:Lcom/avira/android/custom/OEMessageDialogFragment;

    new-instance v1, Lcom/avira/android/antivirus/at;

    invoke-direct {v1, p0}, Lcom/avira/android/antivirus/at;-><init>(Lcom/avira/android/antivirus/OEScanResultDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/m;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->c:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-virtual {p0}, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 65
    :goto_2
    return-void

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->finish()V

    goto :goto_2

    .line 63
    :cond_4
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const v1, 0x7f08028e

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/avira/android/antivirus/bd;->a()Lcom/avira/android/antivirus/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/antivirus/bd;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/avira/android/antivirus/bd;->b()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    sget-object v1, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    sget-object v3, Lcom/avira/android/custom/aa;->InfoIcon:Lcom/avira/android/custom/aa;

    sget-object v3, Lcom/avira/android/custom/z;->CleanDetectionContent:Lcom/avira/android/custom/z;

    invoke-static {v0, v1, v3, v2}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Lcom/avira/android/custom/x;Lcom/avira/android/custom/z;Ljava/util/ArrayList;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->c:Lcom/avira/android/custom/OEMessageDialogFragment;

    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->c:Lcom/avira/android/custom/OEMessageDialogFragment;

    new-instance v1, Lcom/avira/android/antivirus/aq;

    invoke-direct {v1, p0}, Lcom/avira/android/antivirus/aq;-><init>(Lcom/avira/android/antivirus/OEScanResultDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->c:Lcom/avira/android/custom/OEMessageDialogFragment;

    new-instance v1, Lcom/avira/android/antivirus/ar;

    invoke-direct {v1, p0}, Lcom/avira/android/antivirus/ar;-><init>(Lcom/avira/android/antivirus/OEScanResultDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/m;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->c:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-virtual {p0}, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->finish()V

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->a(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->c:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->c:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-virtual {v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->dismiss()V

    .line 183
    :cond_0
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onDestroy()V

    .line 184
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->a(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
