.class final synthetic Lcom/avira/android/common/web/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$avira$android$common$web$ErrorCodeDescriptionMapper$Error:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lcom/avira/android/common/web/c;->values()[Lcom/avira/android/common/web/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/avira/android/common/web/b;->$SwitchMap$com$avira$android$common$web$ErrorCodeDescriptionMapper$Error:[I

    :try_start_0
    sget-object v0, Lcom/avira/android/common/web/b;->$SwitchMap$com$avira$android$common$web$ErrorCodeDescriptionMapper$Error:[I

    sget-object v1, Lcom/avira/android/common/web/c;->REGISTRATION_ACCOUNT_EXIST:Lcom/avira/android/common/web/c;

    invoke-virtual {v1}, Lcom/avira/android/common/web/c;->ordinal()I

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
