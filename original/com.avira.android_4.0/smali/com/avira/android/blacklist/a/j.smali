.class public final enum Lcom/avira/android/blacklist/a/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/blacklist/a/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/blacklist/a/j;

.field public static final enum CONTACT_DETAILS_HISTORY:Lcom/avira/android/blacklist/a/j;

.field public static final enum DELETE_DETAILS_CALL_HISTORY:Lcom/avira/android/blacklist/a/j;

.field public static final enum DELETE_DETAILS_SMS_HISTORY:Lcom/avira/android/blacklist/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/avira/android/blacklist/a/j;

    const-string v1, "DELETE_DETAILS_CALL_HISTORY"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/blacklist/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/a/j;->DELETE_DETAILS_CALL_HISTORY:Lcom/avira/android/blacklist/a/j;

    new-instance v0, Lcom/avira/android/blacklist/a/j;

    const-string v1, "DELETE_DETAILS_SMS_HISTORY"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/blacklist/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/a/j;->DELETE_DETAILS_SMS_HISTORY:Lcom/avira/android/blacklist/a/j;

    new-instance v0, Lcom/avira/android/blacklist/a/j;

    const-string v1, "CONTACT_DETAILS_HISTORY"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/blacklist/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/a/j;->CONTACT_DETAILS_HISTORY:Lcom/avira/android/blacklist/a/j;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avira/android/blacklist/a/j;

    sget-object v1, Lcom/avira/android/blacklist/a/j;->DELETE_DETAILS_CALL_HISTORY:Lcom/avira/android/blacklist/a/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/blacklist/a/j;->DELETE_DETAILS_SMS_HISTORY:Lcom/avira/android/blacklist/a/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/blacklist/a/j;->CONTACT_DETAILS_HISTORY:Lcom/avira/android/blacklist/a/j;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avira/android/blacklist/a/j;->$VALUES:[Lcom/avira/android/blacklist/a/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/a/j;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/avira/android/blacklist/a/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/a/j;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/blacklist/a/j;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/avira/android/blacklist/a/j;->$VALUES:[Lcom/avira/android/blacklist/a/j;

    invoke-virtual {v0}, [Lcom/avira/android/blacklist/a/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/blacklist/a/j;

    return-object v0
.end method
