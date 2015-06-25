.class public final enum Lcom/avira/android/cropimage/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/cropimage/x;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/cropimage/x;

.field public static final enum ALL:Lcom/avira/android/cropimage/x;

.field public static final enum EXTERNAL:Lcom/avira/android/cropimage/x;

.field public static final enum INTERNAL:Lcom/avira/android/cropimage/x;

.field public static final enum NONE:Lcom/avira/android/cropimage/x;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Lcom/avira/android/cropimage/x;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/cropimage/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/cropimage/x;->NONE:Lcom/avira/android/cropimage/x;

    new-instance v0, Lcom/avira/android/cropimage/x;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/cropimage/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/cropimage/x;->INTERNAL:Lcom/avira/android/cropimage/x;

    new-instance v0, Lcom/avira/android/cropimage/x;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/cropimage/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/cropimage/x;->EXTERNAL:Lcom/avira/android/cropimage/x;

    new-instance v0, Lcom/avira/android/cropimage/x;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/avira/android/cropimage/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/cropimage/x;->ALL:Lcom/avira/android/cropimage/x;

    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avira/android/cropimage/x;

    sget-object v1, Lcom/avira/android/cropimage/x;->NONE:Lcom/avira/android/cropimage/x;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/cropimage/x;->INTERNAL:Lcom/avira/android/cropimage/x;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/cropimage/x;->EXTERNAL:Lcom/avira/android/cropimage/x;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/cropimage/x;->ALL:Lcom/avira/android/cropimage/x;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avira/android/cropimage/x;->$VALUES:[Lcom/avira/android/cropimage/x;

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
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/cropimage/x;
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/avira/android/cropimage/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/x;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/cropimage/x;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/avira/android/cropimage/x;->$VALUES:[Lcom/avira/android/cropimage/x;

    invoke-virtual {v0}, [Lcom/avira/android/cropimage/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/cropimage/x;

    return-object v0
.end method
