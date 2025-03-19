    import { Text, View, StyleSheet, ImageBackground, Pressable} from 'react-native'
    import VertImg from "@/assets/images/vert.jpg"
    import { Link } from 'expo-router'

//https://www.youtube.com/watch?v=czhLCGuu_AU

    const App = () => {
        return (
            <View style = {styles.container}>
                <Link href="/formation" style = {styles.link} asChild>
                <Pressable style = {styles.button_suivre}>
                    <Text style = {styles.buttonText}>Suivre une formations</Text>
                </Pressable>
                </Link>
                <Link href="/formation_create" style = {styles.link} asChild>
                <Pressable style = {styles.button_create}>
                    <Text style = {styles.buttonText_create}>Créer une formation</Text>
                </Pressable>
                </Link>
            </View>
        )
    }
    export default App

    const styles = StyleSheet.create({
        container: {
            flex: 1,
            flexDirection: 'column',
            backgroundColor: 'rgba(12, 59, 46, 1)',
            justifyContent: 'flex-start',
            paddingTop: 50,
        },
        title: {
            color: 'white',
            fontSize: 42,
            fontWeight: 'bold',
            textAlign: 'center',
            marginBottom: 120,
        },
        link: {
            color: 'white',
            fontSize: 42,
            fontWeight: 'bold',
            textAlign: 'center',
            padding: 4,
        },
        button_suivre: {
            height: 70,
            marginLeft: 40,
            marginRight: 40,
            borderRadius: 20,
            justifyContent: 'center',
            backgroundColor: 'rgba(109, 151, 115, 0.75)',
            padding: 6,
        },
        button_create: {
            height: 70,
            marginLeft: 40,
            marginRight: 40,
            marginTop: 20,
            borderRadius: 20,
            justifyContent: 'center',
            backgroundColor: 'white',
            padding: 6,
        },
        buttonText: {
            color: 'white',
            fontSize: 25,
            fontWeight: 'bold',
            textAlign: 'center',
            padding: 4,
        },
        buttonText_create: {
            color: 'rgba(109, 151, 115, 0.75)',
            fontSize: 25,
            fontWeight: 'bold',
            textAlign: 'center',
            padding: 4,
        }
    })
