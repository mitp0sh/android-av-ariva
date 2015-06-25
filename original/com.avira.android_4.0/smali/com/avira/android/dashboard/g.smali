.class final synthetic Lcom/avira/android/dashboard/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$avira$android$dashboard$DashboardActivityPresenter$AntivirusSubTextState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 778
    invoke-static {}, Lcom/avira/android/dashboard/h;->values()[Lcom/avira/android/dashboard/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/avira/android/dashboard/g;->$SwitchMap$com$avira$android$dashboard$DashboardActivityPresenter$AntivirusSubTextState:[I

    :try_start_0
    sget-object v0, Lcom/avira/android/dashboard/g;->$SwitchMap$com$avira$android$dashboard$DashboardActivityPresenter$AntivirusSubTextState:[I

    sget-object v1, Lcom/avira/android/dashboard/h;->SCANNING_IN_PROGRESS:Lcom/avira/android/dashboard/h;

    invoke-virtual {v1}, Lcom/avira/android/dashboard/h;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/avira/android/dashboard/g;->$SwitchMap$com$avira$android$dashboard$DashboardActivityPresenter$AntivirusSubTextState:[I

    sget-object v1, Lcom/avira/android/dashboard/h;->FIRST_SCAN_NOT_COMPLETE:Lcom/avira/android/dashboard/h;

    invoke-virtual {v1}, Lcom/avira/android/dashboard/h;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/avira/android/dashboard/g;->$SwitchMap$com$avira$android$dashboard$DashboardActivityPresenter$AntivirusSubTextState:[I

    sget-object v1, Lcom/avira/android/dashboard/h;->DEFAULT:Lcom/avira/android/dashboard/h;

    invoke-virtual {v1}, Lcom/avira/android/dashboard/h;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
