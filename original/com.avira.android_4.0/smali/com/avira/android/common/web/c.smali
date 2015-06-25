.class public final enum Lcom/avira/android/common/web/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/common/web/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/common/web/c;

.field public static final enum INVALID_DEVICE:Lcom/avira/android/common/web/c;

.field public static final enum INVALID_LOGIN_PASSWORD:Lcom/avira/android/common/web/c;

.field public static final enum INVALID_REQUEST:Lcom/avira/android/common/web/c;

.field public static final enum NO_COMMAND:Lcom/avira/android/common/web/c;

.field public static final enum REGISTRATION_ACCOUNT_EXIST:Lcom/avira/android/common/web/c;

.field public static final enum REGISTRATION_DEVICE_INCOMPATIBLE:Lcom/avira/android/common/web/c;

.field public static final enum REGISTRATION_FAILED:Lcom/avira/android/common/web/c;

.field public static final enum REGISTRATION_FAILED_C2DM_ID:Lcom/avira/android/common/web/c;

.field public static final enum REGISTRATION_MAX_DEVICE_REACHED:Lcom/avira/android/common/web/c;

.field public static final enum UNKNOWN_ERROR:Lcom/avira/android/common/web/c;

.field public static final enum UNLINK_DEVICE_ID_NOT_FOUND:Lcom/avira/android/common/web/c;

.field public static final enum UNLINK_IMEI_NOT_FOUND:Lcom/avira/android/common/web/c;

.field public static final enum UNLINK_INVALID_IMEI_DEVICEID:Lcom/avira/android/common/web/c;

.field public static final enum UNLINK_REGISTERED_EMAIL_NOT_FOUND:Lcom/avira/android/common/web/c;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f080168

    const v5, 0x7f080167

    .line 24
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "NO_COMMAND"

    const v2, 0x7f080160

    const/16 v3, 0x385

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->NO_COMMAND:Lcom/avira/android/common/web/c;

    .line 25
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "UNKNOWN_ERROR"

    const v2, 0x7f080161

    const/16 v3, 0x386

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->UNKNOWN_ERROR:Lcom/avira/android/common/web/c;

    .line 26
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "REGISTRATION_FAILED"

    const/16 v2, 0x387

    invoke-direct {v0, v1, v9, v6, v2}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->REGISTRATION_FAILED:Lcom/avira/android/common/web/c;

    .line 27
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "REGISTRATION_DEVICE_INCOMPATIBLE"

    const/4 v2, 0x3

    const v3, 0x7f080163

    const/16 v4, 0x388

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->REGISTRATION_DEVICE_INCOMPATIBLE:Lcom/avira/android/common/web/c;

    .line 28
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "REGISTRATION_MAX_DEVICE_REACHED"

    const/4 v2, 0x4

    const v3, 0x7f080164

    const/16 v4, 0x389

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->REGISTRATION_MAX_DEVICE_REACHED:Lcom/avira/android/common/web/c;

    .line 29
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "REGISTRATION_FAILED_C2DM_ID"

    const/4 v2, 0x5

    const v3, 0x7f080162

    const/16 v4, 0x38a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->REGISTRATION_FAILED_C2DM_ID:Lcom/avira/android/common/web/c;

    .line 30
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "INVALID_REQUEST"

    const/4 v2, 0x6

    const v3, 0x7f080166

    const/16 v4, 0x38b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->INVALID_REQUEST:Lcom/avira/android/common/web/c;

    .line 31
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "INVALID_DEVICE"

    const/4 v2, 0x7

    const v3, 0x7f080165

    const/16 v4, 0x38c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->INVALID_DEVICE:Lcom/avira/android/common/web/c;

    .line 32
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "INVALID_LOGIN_PASSWORD"

    const/16 v2, 0x8

    const/16 v3, 0x38e

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->INVALID_LOGIN_PASSWORD:Lcom/avira/android/common/web/c;

    .line 33
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "UNLINK_INVALID_IMEI_DEVICEID"

    const/16 v2, 0x9

    const/16 v3, 0x390

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->UNLINK_INVALID_IMEI_DEVICEID:Lcom/avira/android/common/web/c;

    .line 34
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "UNLINK_DEVICE_ID_NOT_FOUND"

    const/16 v2, 0xa

    const/16 v3, 0x393

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->UNLINK_DEVICE_ID_NOT_FOUND:Lcom/avira/android/common/web/c;

    .line 35
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "UNLINK_IMEI_NOT_FOUND"

    const/16 v2, 0xb

    const/16 v3, 0x394

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->UNLINK_IMEI_NOT_FOUND:Lcom/avira/android/common/web/c;

    .line 36
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "UNLINK_REGISTERED_EMAIL_NOT_FOUND"

    const/16 v2, 0xc

    const/16 v3, 0x397

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->UNLINK_REGISTERED_EMAIL_NOT_FOUND:Lcom/avira/android/common/web/c;

    .line 37
    new-instance v0, Lcom/avira/android/common/web/c;

    const-string v1, "REGISTRATION_ACCOUNT_EXIST"

    const/16 v2, 0xd

    const/16 v3, 0x39b

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/avira/android/common/web/c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avira/android/common/web/c;->REGISTRATION_ACCOUNT_EXIST:Lcom/avira/android/common/web/c;

    .line 21
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/avira/android/common/web/c;

    sget-object v1, Lcom/avira/android/common/web/c;->NO_COMMAND:Lcom/avira/android/common/web/c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avira/android/common/web/c;->UNKNOWN_ERROR:Lcom/avira/android/common/web/c;

    aput-object v1, v0, v8

    sget-object v1, Lcom/avira/android/common/web/c;->REGISTRATION_FAILED:Lcom/avira/android/common/web/c;

    aput-object v1, v0, v9

    const/4 v1, 0x3

    sget-object v2, Lcom/avira/android/common/web/c;->REGISTRATION_DEVICE_INCOMPATIBLE:Lcom/avira/android/common/web/c;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/avira/android/common/web/c;->REGISTRATION_MAX_DEVICE_REACHED:Lcom/avira/android/common/web/c;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/avira/android/common/web/c;->REGISTRATION_FAILED_C2DM_ID:Lcom/avira/android/common/web/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avira/android/common/web/c;->INVALID_REQUEST:Lcom/avira/android/common/web/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avira/android/common/web/c;->INVALID_DEVICE:Lcom/avira/android/common/web/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avira/android/common/web/c;->INVALID_LOGIN_PASSWORD:Lcom/avira/android/common/web/c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avira/android/common/web/c;->UNLINK_INVALID_IMEI_DEVICEID:Lcom/avira/android/common/web/c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avira/android/common/web/c;->UNLINK_DEVICE_ID_NOT_FOUND:Lcom/avira/android/common/web/c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avira/android/common/web/c;->UNLINK_IMEI_NOT_FOUND:Lcom/avira/android/common/web/c;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/avira/android/common/web/c;->UNLINK_REGISTERED_EMAIL_NOT_FOUND:Lcom/avira/android/common/web/c;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/avira/android/common/web/c;->REGISTRATION_ACCOUNT_EXIST:Lcom/avira/android/common/web/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/common/web/c;->$VALUES:[Lcom/avira/android/common/web/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/avira/android/common/web/c;->a:I

    .line 54
    iput p4, p0, Lcom/avira/android/common/web/c;->b:I

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/common/web/c;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/avira/android/common/web/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/common/web/c;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/common/web/c;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/avira/android/common/web/c;->$VALUES:[Lcom/avira/android/common/web/c;

    invoke-virtual {v0}, [Lcom/avira/android/common/web/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/common/web/c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/avira/android/common/web/c;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/avira/android/common/web/c;->a:I

    return v0
.end method
