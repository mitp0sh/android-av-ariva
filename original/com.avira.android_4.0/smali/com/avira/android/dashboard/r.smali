.class final synthetic Lcom/avira/android/dashboard/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$avira$android$dashboard$DashboardHelpActivityPresenter$RefreshState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 200
    invoke-static {}, Lcom/avira/android/dashboard/u;->values()[Lcom/avira/android/dashboard/u;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/avira/android/dashboard/r;->$SwitchMap$com$avira$android$dashboard$DashboardHelpActivityPresenter$RefreshState:[I

    :try_start_0
    sget-object v0, Lcom/avira/android/dashboard/r;->$SwitchMap$com$avira$android$dashboard$DashboardHelpActivityPresenter$RefreshState:[I

    sget-object v1, Lcom/avira/android/dashboard/u;->REFRESH_APP_RESET:Lcom/avira/android/dashboard/u;

    invoke-virtual {v1}, Lcom/avira/android/dashboard/u;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
