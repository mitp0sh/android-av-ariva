.class final Lcom/avira/android/debug/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/debug/DebuggingPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/avira/android/debug/h;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    sget-boolean v0, Lcom/avira/android/device/DeviceInfoUpdateService;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/avira/android/device/DeviceInfoUpdateService;->a:Z

    .line 224
    invoke-static {}, Lcom/avira/android/device/DeviceInfoUpdateService;->a()V

    .line 225
    iget-object v0, p0, Lcom/avira/android/debug/h;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-virtual {v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DeviceInfoUpdateService debug="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/avira/android/device/DeviceInfoUpdateService;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    return v1

    :cond_0
    move v0, v2

    .line 223
    goto :goto_0
.end method
