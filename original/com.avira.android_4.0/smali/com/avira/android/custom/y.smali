.class final enum Lcom/avira/android/custom/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/custom/y;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/custom/y;

.field public static final enum DarkGray:Lcom/avira/android/custom/y;

.field public static final enum LightGray:Lcom/avira/android/custom/y;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/avira/android/custom/y;

    const-string v1, "DarkGray"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/custom/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/y;->DarkGray:Lcom/avira/android/custom/y;

    new-instance v0, Lcom/avira/android/custom/y;

    const-string v1, "LightGray"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/custom/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/y;->LightGray:Lcom/avira/android/custom/y;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avira/android/custom/y;

    sget-object v1, Lcom/avira/android/custom/y;->DarkGray:Lcom/avira/android/custom/y;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/custom/y;->LightGray:Lcom/avira/android/custom/y;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avira/android/custom/y;->$VALUES:[Lcom/avira/android/custom/y;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/custom/y;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/avira/android/custom/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/y;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/custom/y;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/avira/android/custom/y;->$VALUES:[Lcom/avira/android/custom/y;

    invoke-virtual {v0}, [Lcom/avira/android/custom/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/custom/y;

    return-object v0
.end method
