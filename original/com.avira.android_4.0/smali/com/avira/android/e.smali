.class final synthetic Lcom/avira/android/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$avira$android$ApplicationService$ResetOption:[I

.field static final synthetic $SwitchMap$com$avira$android$custom$OEMessageDialogHelper$ButtonMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 620
    invoke-static {}, Lcom/avira/android/custom/x;->values()[Lcom/avira/android/custom/x;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/avira/android/e;->$SwitchMap$com$avira$android$custom$OEMessageDialogHelper$ButtonMode:[I

    :try_start_0
    sget-object v0, Lcom/avira/android/e;->$SwitchMap$com$avira$android$custom$OEMessageDialogHelper$ButtonMode:[I

    sget-object v1, Lcom/avira/android/custom/x;->CloseButton:Lcom/avira/android/custom/x;

    invoke-virtual {v1}, Lcom/avira/android/custom/x;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/avira/android/e;->$SwitchMap$com$avira$android$custom$OEMessageDialogHelper$ButtonMode:[I

    sget-object v1, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    invoke-virtual {v1}, Lcom/avira/android/custom/x;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 460
    :goto_1
    invoke-static {}, Lcom/avira/android/h;->values()[Lcom/avira/android/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/avira/android/e;->$SwitchMap$com$avira$android$ApplicationService$ResetOption:[I

    :try_start_2
    sget-object v0, Lcom/avira/android/e;->$SwitchMap$com$avira$android$ApplicationService$ResetOption:[I

    sget-object v1, Lcom/avira/android/h;->RESTART:Lcom/avira/android/h;

    invoke-virtual {v1}, Lcom/avira/android/h;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/avira/android/e;->$SwitchMap$com$avira$android$ApplicationService$ResetOption:[I

    sget-object v1, Lcom/avira/android/h;->TERMINATE:Lcom/avira/android/h;

    invoke-virtual {v1}, Lcom/avira/android/h;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
