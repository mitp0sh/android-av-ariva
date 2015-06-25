.class final enum Lcom/avira/android/custom/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/custom/w;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/custom/w;

.field public static final enum Horizontal:Lcom/avira/android/custom/w;

.field public static final enum Vertical:Lcom/avira/android/custom/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/avira/android/custom/w;

    const-string v1, "Horizontal"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/custom/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/w;->Horizontal:Lcom/avira/android/custom/w;

    new-instance v0, Lcom/avira/android/custom/w;

    const-string v1, "Vertical"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/custom/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/w;->Vertical:Lcom/avira/android/custom/w;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avira/android/custom/w;

    sget-object v1, Lcom/avira/android/custom/w;->Horizontal:Lcom/avira/android/custom/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/custom/w;->Vertical:Lcom/avira/android/custom/w;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avira/android/custom/w;->$VALUES:[Lcom/avira/android/custom/w;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/custom/w;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/avira/android/custom/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/w;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/custom/w;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/avira/android/custom/w;->$VALUES:[Lcom/avira/android/custom/w;

    invoke-virtual {v0}, [Lcom/avira/android/custom/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/custom/w;

    return-object v0
.end method
